package com.softserve.edu.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HostingController {

    @RequestMapping(value = "/hosting", method = RequestMethod.GET)
    public String hostelShow(Model model) {
            return "hosting";
    }
}
