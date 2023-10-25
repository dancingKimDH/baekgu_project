package com.example.baekgu_project.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.baekgu_project.service.MyPageService;
import com.example.baekgu_project.service.PetInformationService;
import com.example.baekgu_project.service.UsersService;

@Controller
public class MyPageController {

    @Autowired
    MyPageService myPageService;

    @Autowired
    PetInformationService petInformationService;

    @Autowired
    UsersService usersService;

    @GetMapping("/myPage")
    public ModelAndView petStatus(Principal principal) {

        ModelAndView modelAndView = new ModelAndView("/WEB-INF/views/myPage/myPage.jsp");
        HashMap result = new HashMap();

        if (principal != null) {
            String username = principal.getName();

            result = (HashMap) myPageService.selectWithUserName(username);
            modelAndView.addObject("result", result);

        }
        return modelAndView;

    }

}
