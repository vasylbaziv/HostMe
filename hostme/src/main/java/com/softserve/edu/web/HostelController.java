package com.softserve.edu.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HostelController {

    @RequestMapping(value = "/hostel", method = RequestMethod.GET)
    public String hostelShow(Model model) {
            return "hostel";
    }
}
