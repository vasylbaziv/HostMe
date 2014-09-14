package com.softserve.edu.web;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.softserve.edu.entity.Language;
import com.softserve.edu.entity.User;
import com.softserve.edu.service.LanguageService;
import com.softserve.edu.service.ProfileService;
import com.softserve.edu.service.UserService;

@Controller
public class EditProfileController {

	@Autowired
	private ProfileService profileService;
	@Autowired
	private LanguageService languageService;
	@Autowired
	private UserService userService;

	private User getCurrentUser() {

		Authentication authentication = SecurityContextHolder.getContext()
				.getAuthentication();
		String currentPrincipalName = authentication.getName();

		return profileService.getUserByLogin(currentPrincipalName);
	}

	@RequestMapping(value = "/edit-profile", method = RequestMethod.GET)
	public String editProfileShow(Model model) {

		User user = getCurrentUser();

		model.addAttribute("user", user);

		return "edit-profile";
	}

	@RequestMapping(value = "/edit-languages", method = RequestMethod.GET)
	public String editLanguages(Model model) {

		User user = getCurrentUser();
		ArrayList<Language> langs = (ArrayList<Language>) languageService
				.getAllLanguages();

		model.addAttribute("user", user);
		model.addAttribute("langs", langs);

		return "edit-languages";
	}

	@RequestMapping(value = "/edited-languages", method = RequestMethod.POST)
	public String editedLanguages(Model model) {
		User user = getCurrentUser();

		return "redirect:/profile";
	}

	@RequestMapping(value = "/edited-profile", method = RequestMethod.POST)
	public String editProfileShow(@ModelAttribute("user") User editedUser) {

		User user = getCurrentUser();

		user.setFirstName(editedUser.getFirstName());
		user.setLastName(editedUser.getLastName());
		user.setGender(editedUser.getGender());
		user.setHobby(editedUser.getHobby());
		user.setDescription(editedUser.getDescription());
		user.setEmail(editedUser.getEmail());

		userService.updateUser(user);

		return "redirect:/profile";
	}

	@RequestMapping(value = "/change-password", method = RequestMethod.POST)
	public String changePassword(@RequestParam("newPassword") String newPassword) {

		User user = getCurrentUser();
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

		if (encoder.matches(newPassword, user.getPassword())) {
			return "redirect:/edit-profile";
		} else {
			user.setPassword(encoder.encode(newPassword));
			userService.updateUser(user);
			return "redirect:/edit-profile";
		}

	}

	@RequestMapping("/change-password/correctOldPassword")
	@ResponseBody
	public String availablePassword(@RequestParam String oldPassword) {
		User user = getCurrentUser();
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		Boolean correct = encoder.matches(oldPassword, user.getPassword());
		return correct.toString();
	}

}
