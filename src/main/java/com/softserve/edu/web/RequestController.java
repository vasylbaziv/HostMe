package com.softserve.edu.web;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.softserve.edu.entity.Hosting;
import com.softserve.edu.entity.Request;
import com.softserve.edu.entity.Status;
import com.softserve.edu.entity.User;
import com.softserve.edu.service.ProfileService;
import com.softserve.edu.service.RequestService;

@Controller
public class RequestController {
    @Autowired
    private RequestService requestService;
    @Autowired
    private ProfileService profileService;
    
    @RequestMapping(value = "/request", method = RequestMethod.POST)
    public String sendRequest(@ModelAttribute("request") Request request,
            BindingResult bindingResult, Model model) {
        
        Calendar calendar1 = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar1.setTimeInMillis(Long.parseLong((String) bindingResult
                .getFieldValue("beginDate")));
        request.setBeginDate(calendar1);
        calendar2.setTimeInMillis(Long.parseLong((String) bindingResult
                .getFieldValue("endDate")));
        request.setEndDate(calendar2);
        request.setStatus(Status.PENDING);
        Authentication authentication = SecurityContextHolder.getContext()
                .getAuthentication();
        String currentPrincipalName = authentication.getName();
        User user = profileService.getUserByLogin(currentPrincipalName);
        request.setAuthor(user);
        int id = Integer.parseInt((String) bindingResult
                .getFieldValue("hosting"));
        Hosting hosting = new Hosting();
        hosting.setHostingId(id);
        request.setHosting(hosting);
        requestService.createRequest(request);
        
        boolean requestSent = true;
        model.addAttribute("requestSent", requestSent);
        StringBuilder returnString = new StringBuilder(
                "redirect:/hosting?hostingId=");
        return returnString.append(hosting.getHostingId()).append("&userId=")
                .append(user.getUserId()).toString();
        
    }
}
