package com.example.baekgu_project.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.baekgu_project.service.PetInformationService;
import com.example.baekgu_project.service.UsersService;

@Controller
@RequestMapping({ "/myPage" })
public class MyPageController {
   
    @Autowired
    PetInformationService petInformationService;

    @Autowired
    UsersService usersService;

    public ModelAndView petStatus(ModelAndView modelAndView, Principal principal) {
        try {
            if(principal != null) {
                String username = principal.getName();
                Object userInfo = usersService.selectByID(username);
                modelAndView.addObject("userInfo", userInfo);
            }

        } catch (Exception e) {
            // TODO: handle exception
        }

        modelAndView.setViewName("main/myPage.jsp");
        return modelAndView;
    }


}
