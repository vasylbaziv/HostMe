package com.softserve.edu.web;

import src.main.java.com.softserve.edu.entity.Hosting;
import src.main.java.com.softserve.edu.entity.User;
import src.main.java.com.softserve.edu.service.HostingService;
import src.main.java.com.softserve.edu.service.UserService;


@Controller
public class HostingController {
	@Autowired
	private HostingService hostingService;
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/hosting", method = RequestMethod.GET)
	public String hostelShow(@RequestParam(value = "userId") int userId,
			@RequestParam(value = "hostingId") int hostingId, Model model) {
		User user = userService.getUser(userId);
		model.addAttribute("user", user);
		Hosting hosting = hostingService.getHosting(hostingId);
		model.addAttribute("hosting", hosting);
		return "hosting";
	}

}
