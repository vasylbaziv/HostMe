package com.softserve.edu.web;

import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.softserve.edu.entity.User;


	@Controller
	public class LoginController {
//
//		@RequestMapping(value = "/main", method = RequestMethod.GET)
//		public String printWelcome(ModelMap model, Principal principal) {
//
//			String name = principal.getName();
//			model.addAttribute("username", name);
//			return "main_page";
//
//		}
//
//		@RequestMapping(value = "/login", method = RequestMethod.GET)
//		public String login(ModelMap model) {
//
//			return "login_page";
//
//		}
		@RequestMapping(value = "/login", method = RequestMethod.GET)
		public String login(Model model) {
			User user = new User();
			model.addAttribute("user", user);

			return "login";

		}
	@Secured("ROLE_ADMIN")
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginProc(@ModelAttribute("user") User user,
			BindingResult bindingResult) {
		System.out.println(bindingResult.getFieldValue("password"));
		System.out.println(bindingResult.getFieldValue("login"));

		return "index";

	}
}
//
//		@RequestMapping(value = "/loginError", method = RequestMethod.GET)
//		public String loginerror(ModelMap model) {
//			model.addAttribute("error", "true");
//			return "login_page";
//
//		}
//
//		@Secured({ "ROLE_REGULAR_USER", "ROLE_ADMIN" })
//		@RequestMapping(value = "/common", method = RequestMethod.GET)
//		public String common(ModelMap model) {
//
//			return "common_page";
//
//		}
//
//		@Secured("ROLE_ADMIN")
//		@RequestMapping(value = "/admin", method = RequestMethod.GET)
//		public String admin(ModelMap model) {
//
//			return "admin_page";
//
//		}
//
//		@RequestMapping(value = "/logout", method = RequestMethod.GET)
//		public String logout(ModelMap model) {
//
//			return login(model);
//
//		}
//	}

