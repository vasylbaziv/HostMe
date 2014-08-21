package com.softserve.edu.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.softserve.edu.entity.Gender;
import com.softserve.edu.entity.Hosting;
import com.softserve.edu.entity.Request;
import com.softserve.edu.entity.User;
import com.softserve.edu.service.HostingService;
import com.softserve.edu.service.UserService;

@Controller
public class HostingController {
	@Autowired
	private HostingService hostingService;
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/hosting-creation", method = RequestMethod.GET)
	public String hostingCreationShow(Model model) {
		Hosting hosting = new Hosting();
		hosting.setGender(Gender.UNSPECIFIED);
		hosting.setChildren(true);
		hosting.setFamily(true);
		hosting.setSmoking(true);
		hosting.setPets(true);
		model.addAttribute("hosting", hosting);
		return "hosting-creation";
	}

	@RequestMapping(value = "/hosting-creation", method = RequestMethod.POST)
	public String addHosting(@ModelAttribute("hosting") Hosting hosting) {
		hostingService.addHosting(hosting);
		return "redirect:/profile";
	}

	@RequestMapping(value = "/hosting", method = RequestMethod.GET)
	public String hostelShow(@RequestParam(value = "userId") int userId,
			@RequestParam(value = "hostingId") int hostingId, Model model) {
		User user = userService.getUser(userId);
		model.addAttribute("user", user);
		Hosting hosting = hostingService.getHosting(hostingId);
		model.addAttribute("hosting", hosting);
		Request request = new Request();
		model.addAttribute("request", request);
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.append(hosting.getCountry()).append(",")
				.append(hosting.getCity()).append(",")
				.append(hosting.getAddress());
		model.addAttribute("location", stringBuilder.toString());
		return "hosting";
	}

}
