package com.softserve.edu.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GoogleAPICintroller {
	@RequestMapping(value="/test",method=RequestMethod.GET)
	public String process(@ModelAttribute("location")String location,Model model ){
		model.addAttribute("location", location);
		
		return "test";
	}

}
