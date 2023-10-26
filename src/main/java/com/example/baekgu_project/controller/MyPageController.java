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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.baekgu_project.service.MyPageService;
import com.example.baekgu_project.service.PetInformationService;
import com.example.baekgu_project.service.UsersService;
import com.example.baekgu_project.utils.Commons;

@Controller
public class MyPageController {

    @Autowired
    MyPageService myPageService;

    @Autowired
    PetInformationService petInformationService;

    @Autowired
    UsersService usersService;

    @Autowired
    Commons commons;

    @GetMapping("/myPage")
    public ModelAndView petStatus(@RequestParam Map params, ModelAndView modelAndView) {
        
        Object result = myPageService.selectWithUserName(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        modelAndView.setViewName("/WEB-INF/views/myPage/myPage.jsp");

        return modelAndView;

    }

}
