package com.example.baekgu_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SecurityController
{

    @GetMapping({"/loginForm"})
    public ModelAndView loginForm(ModelAndView modelAndView)
    {
        String viewName = "/WEB-INF/views/login/login.jsp";
        modelAndView.setViewName(viewName);
        return modelAndView;
    }
}