package com.softserve.edu.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HostingCreationController {

    @RequestMapping(value = "/hosting-creation", method = RequestMethod.GET)
    public String hostingCreationShow(Model model) {
            return "hosting-creation";
    }
}