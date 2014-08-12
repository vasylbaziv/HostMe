package com.softserve.edu.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.softserve.edu.entity.Hosting;
import com.softserve.edu.entity.User;
import com.softserve.edu.service.HostingService;
import com.softserve.edu.service.UserService;

@Controller
public class HosterController {
    @Autowired
    private UserService userService;
    
    @Autowired
    private HostingService hostingService;
    
    @RequestMapping(value = "/hoster", method = RequestMethod.GET)
    public String hosterShow(Model model) {
        User user = userService.getUser(3);
        
        // Gets User by id and adds it to the model
        model.addAttribute("User", user);
        
        List<Hosting> userHostings = hostingService.getUserHostings();
        
        /* Adds Hostings from User (where UserId == 3, 
         * has to be changed in HostingDaoImpl.java) to the model
         */
        model.addAttribute("UserHostings", userHostings.get(1));
        
        return "hoster";
    }
}
