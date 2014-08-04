package com.softserve.edu.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EditProfileController {

    @RequestMapping(value = "/edit-profile", method = RequestMethod.GET)
    public String editProfileShow(Model model) {
            return "edit-profile";
    }
}
