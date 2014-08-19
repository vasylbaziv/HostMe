package com.softserve.edu.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
		String country = null;
		String region = null;
		String city = null;
		String address = null;
		String min = null;
		String max = null;
		String gender = null;
		String smoking = null;
		String family = null;
		String children = null;
		String pets = null;
		String notes = null;
		model.addAttribute("country", country);
		model.addAttribute("region", region);
		model.addAttribute("city", city);
		model.addAttribute("address", address);
		model.addAttribute("min", min);
		model.addAttribute("max", max);
		model.addAttribute("gender", gender);
		model.addAttribute("smoking", smoking);
		model.addAttribute("family", family);
		model.addAttribute("children", children);
		model.addAttribute("pets", pets);
		model.addAttribute("notes", notes);
		return "hosting-creation";
	}

	@RequestMapping(value = "/hosting-creation", method = RequestMethod.POST)
	public String addHosting(@ModelAttribute("country") String country,
			@ModelAttribute("region") String region,
			@ModelAttribute("city") String city,
			@ModelAttribute("address") String address,
			@ModelAttribute("min") String min,
			@ModelAttribute("max") String max,
			@ModelAttribute("gender") String gender,
			@ModelAttribute("smoking") String smoking,
			@ModelAttribute("family") String family,
			@ModelAttribute("children") String children,
			@ModelAttribute("pets") String pets,
			@ModelAttribute("notes") String notes, BindingResult bindingResult) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		String login = auth.getName();
		hostingService.addHosting(login, country, region, city, address, min,
				max, gender, smoking, family, children, pets, notes);
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
		model.addAttribute("request",request);
		return "hosting";
	}

}
