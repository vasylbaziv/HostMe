package com.softserve.edu.web;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

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
import org.springframework.web.multipart.MultipartFile;

import com.softserve.edu.entity.Gender;
import com.softserve.edu.entity.Hosting;
import com.softserve.edu.entity.Request;
import com.softserve.edu.entity.User;
import com.softserve.edu.service.HostingService;
import com.softserve.edu.service.ImageService;
import com.softserve.edu.service.UserService;

@Controller
public class HostingController {
	@Autowired
	private HostingService hostingService;
	@Autowired
	private UserService userService;
	@Autowired
	private ImageService imageService;
  
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
	public String addHosting(@ModelAttribute("hosting") Hosting hosting,
			@RequestParam("file") MultipartFile[] files) {
		
		hostingService.addHosting(hosting);
		imageService.addImages(files, hosting);
		

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
		return "hosting";
	}

}
