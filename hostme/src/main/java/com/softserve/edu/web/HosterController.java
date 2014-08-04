package com.softserve.edu.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HosterController {

    @RequestMapping(value = "/hoster", method = RequestMethod.GET)
    public String hosterShow(Model model) {
            return "hoster";
    }
}
