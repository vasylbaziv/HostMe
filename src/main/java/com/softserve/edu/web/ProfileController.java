package com.softserve.edu.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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

	private User getCurrentUser() {

		Authentication authentication = SecurityContextHolder.getContext()
				.getAuthentication();
		String currentPrincipalName = authentication.getName();

		return profileService.getUserByLogin(currentPrincipalName);
	}

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profileShow(Model model) {

		User user = getCurrentUser();

//		 userService.initilizeUserLanguages(user);

		model.addAttribute("age", profileService.calcAge(user));
		model.addAttribute("birth", profileService.receiveBirthday(user));
		model.addAttribute("user", user);

		return "profile";

	}

	@RequestMapping(value = "/edit-profile", method = RequestMethod.GET)
	public String editProfileShow(Model model) {

		User user = getCurrentUser();
		model.addAttribute("user", user);

		return "edit-profile";
	}

	@RequestMapping(value = "/edited-profile", method = RequestMethod.POST)
	public String editProfileShow(@ModelAttribute("user") User editedUser) {

		User user = getCurrentUser();

		// need to change, its not correct to do like this
		
		user.setFirstName(editedUser.getFirstName());
		user.setLastName(editedUser.getLastName());
		user.setGender(editedUser.getGender());
		user.setHobby(editedUser.getHobby());
		user.setDescription(editedUser.getDescription());

		userService.updateUser(user);

		return "redirect:/profile";
	}

}
