package com.softserve.edu.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.softserve.edu.entity.User;
import com.softserve.edu.service.ProfileService;
import com.softserve.edu.service.UserService;

@Controller
public class ProfileController {
	@Autowired
	private ProfileService profileService;
	
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profileShow(Model model) {

		Authentication authentication = SecurityContextHolder.getContext()
				.getAuthentication();
		String currentPrincipalName = authentication.getName();

		User user = profileService.getUserByLogin(currentPrincipalName);

		int age = profileService.calcAge(user);
		String birth = profileService.receiveBirthday(user);

		userService.initilizeUserLanguages(user);

		model.addAttribute("age", age);
		model.addAttribute("birth", birth);
		model.addAttribute("user", user);

		return "profile";
	}
}
