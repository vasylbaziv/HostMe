package com.softserve.edu.web;

import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.softserve.edu.entity.Hosting;
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
	// private List<RequestJsonEntity> formList(){
	// List<RequestJsonEntity> list= new ArrayList<>();
	// for(int i =0;i<250;i++){
	// RequestJsonEntity jsonObject = new RequestJsonEntity();
	// jsonObject.setBeginDate("123");
	// jsonObject.setEndDate("234");
	// jsonObject.setEndDate("someNotes");
	// jsonObject.setStatus("PENDING");
	// list.add(jsonObject);
	// }
	//
	// return list;
	// }
	@RequestMapping(value = "/request-obtain", method = RequestMethod.GET)
	public String requestSentHistoryPage() {
		return "request-to-me";
	}
	@RequestMapping(value = "/request-sent", method = RequestMethod.GET)
	public String requestObtainHistoryPage() {
		return "request-from-me";
	}

	@RequestMapping(value = "/request-obtain-history", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody List<Request> dataTableObtain() {
		User user = profileService.getUserByLogin(SecurityContextHolder
				.getContext().getAuthentication().getName());
		List<Request> requests = requestService.getloggedInUserRequest(user);
		return requests;

	}
	@RequestMapping(value = "/request-sent-history", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody List<Request> dataTableSent() {
		User user = profileService.getUserByLogin(SecurityContextHolder
				.getContext().getAuthentication().getName());
		List<Request> requests = requestService.getloggedInUserRequest(user);

		return requests;

	}

	@RequestMapping(value = "/request", method = RequestMethod.POST)
	public String sendRequest(@ModelAttribute("request") Request request,
			BindingResult bindingResult, HttpServletRequest httpServletRequest) {
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
		int id = Integer.parseInt((String) bindingResult
				.getFieldValue("hosting"));
		Hosting hosting = new Hosting();
		hosting.setHostingId(id);
		request.setHosting(hosting);
		requestService.createRequest(request);
		return "index";

	}

}
