package com.softserve.edu.web;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.softserve.edu.entity.Hosting;
import com.softserve.edu.entity.Person;
import com.softserve.edu.entity.PersonJsonObject;
import com.softserve.edu.entity.Request;
import com.softserve.edu.entity.Status;
import com.softserve.edu.entity.User;
import com.softserve.edu.service.ProfileService;
import com.softserve.edu.service.RequestService;

@Controller
public class RequestController {
	@Autowired
	private RequestService requestService;
	@Autowired
	private ProfileService profileService;
//	
//	private List<RequestJsonEntity> formList(){
//		List<RequestJsonEntity> list= new ArrayList<>();
//		for(int i =0;i<250;i++){
//			RequestJsonEntity jsonObject = new RequestJsonEntity();
//			jsonObject.setBeginDate("123");
//			jsonObject.setEndDate("234");
//			jsonObject.setEndDate("someNotes");
//			jsonObject.setStatus("PENDING");
//			list.add(jsonObject);
//		}
//		
//		return list;
//	}
	@RequestMapping(value="/request",method=RequestMethod.GET)
	public String requestHistoryPage(){
		return "request-history";
	}
	@RequestMapping(value="/request-sent",method=RequestMethod.GET,produces="application/json")
	public @ResponseBody List<Person> dataTable(){
		/*List<RequestJsonEntity> list= formList();*/
		List<Request> requests = requestService.getAll();/*
		RequestJsonObject requestJsonObject = new RequestJsonObject();
		requestJsonObject.setTotalDisplayRecords(requests.size());
		requestJsonObject.setTotalRecords(requests.size());
		requestJsonObject.setList(requests);*/
//		Gson gson = new GsonBuilder().setPrettyPrinting().create();
	/*
		Gson gson = new Gson();
		String  json = gson.toJson(list);*/
		List<Person> personsList = new ArrayList<Person>();
		for (int i = 0; i < 1; i++) {
	        Person person2 = new Person();
	            person2.setName("John Landy");
	            person2.setPosition("System Architect");
	            person2.setSalary("$320,800");
	            person2.setOffice("NY");
	            person2.setPhone("999999999");
	            person2.setStart_date("05/05/2010");
	            personsList.add(person2);  
	            
	            person2 = new Person();
	            person2.setName("Igor Vornovitsky");
	            person2.setPosition("Solution Architect");
	            person2.setSalary("$340,800");
	            person2.setOffice("NY");
	            person2.setPhone("987897899");
	            person2.setStart_date("05/05/2010");
	            personsList.add(person2); 
	            
	            person2 = new Person();
	            person2.setName("Java Honk");
	            person2.setPosition("Architect");
	            person2.setSalary("$380,800");
	            person2.setOffice("NY");
	            person2.setPhone("1234567890");
	            person2.setStart_date("05/05/2010");
	            personsList.add(person2); 
	            
	            person2 = new Person();
	            person2.setName("Ramesh Arrepu");
	            person2.setPosition("Sr. Architect");
	            person2.setSalary("$310,800");
	            person2.setOffice("NY");
	            person2.setPhone("4654321234");
	            person2.setStart_date("05/05/2010");
	            personsList.add(person2); 
	            
	            person2 = new Person();
	            person2.setName("Bob Sidebottom");
	            person2.setPosition("Architect");
	            person2.setSalary("$300,800");
	            person2.setOffice("NJ");
	            person2.setPhone("9876543212");
	            person2.setStart_date("05/05/2010");
	            personsList.add(person2); 

	    }
	    
	    for (int i = 0; i < 50; i++) {
	        Person person2 = new Person();
	            person2.setName("Zuke Torres");
	            person2.setPosition("System Architect");
	            person2.setSalary("$320,800");
	            person2.setOffice("NY");
	            person2.setPhone("999999999");
	            person2.setStart_date("05/05/2010");
	            personsList.add(person2);  
	    }
	    
	    PersonJsonObject personJsonObject = new PersonJsonObject();
	    personJsonObject.setiTotalDisplayRecords(personsList.size());
	    personJsonObject.setiTotalRecords(personsList.size());
	    personJsonObject.setAaData(personsList);
	    
	    Gson gson = new GsonBuilder().setPrettyPrinting().create();
	    final OutputStream out = new ByteArrayOutputStream();
	    final ObjectMapper mapper = new ObjectMapper();

	    try {
			mapper.writeValue(out, personsList);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	    final byte[] data = ((ByteArrayOutputStream) out).toByteArray();
	    System.out.println(new String(data));
		return personsList;
		
	}

	@RequestMapping(value = "/request", method = RequestMethod.POST)
	public String sendRequest(@ModelAttribute("request") Request request,
			BindingResult bindingResult,HttpServletRequest httpServletRequest) {
		httpServletRequest.getContentLength();

		Calendar calendar1 = Calendar.getInstance();
		Calendar calendar2 = Calendar.getInstance();
		calendar1.setTimeInMillis(Long.parseLong((String) bindingResult
				.getFieldValue("beginDate")));
		request.setBeginDate(calendar1);
		calendar2.setTimeInMillis(Long.parseLong((String) bindingResult
				.getFieldValue("endDate")));
		request.setEndDate(calendar2);
		request.setStatus(Status.PENDING);
		Authentication authentication = SecurityContextHolder.getContext()
				.getAuthentication();
		String currentPrincipalName = authentication.getName();
		User user = profileService.getUserByLogin(currentPrincipalName);
		request.setAuthor(user);
		int id = Integer.parseInt((String) bindingResult.getFieldValue("hosting"));
		Hosting hosting = new Hosting();
		hosting.setHostingId(id);
		request.setHosting(hosting);
		requestService.createRequest(request);
		return "index";

	}

}
