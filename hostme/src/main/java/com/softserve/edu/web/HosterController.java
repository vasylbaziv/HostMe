package com.softserve.edu.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.softserve.edu.entity.User;
import com.softserve.edu.service.UserService;

@Controller
public class HosterController {
    @Autowired
    private UserService userService;
    
    @RequestMapping(value = "/hoster", method = RequestMethod.GET)
    public String hosterShow(Model model) {
        User user = userService.getUser(3);
        
        // Gets User by id and adds it to the model
        model.addAttribute("User", user);
        
        return "hoster";
    }
}
