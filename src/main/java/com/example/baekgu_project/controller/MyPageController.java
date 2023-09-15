package com.example.baekgu_project.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping({ "/myPage" })
public class MyPageController {
    
    @GetMapping({"/petStatus"})
    public ModelAndView petstatus(@RequestParam Map params, ModelAndView modelAndView) {
        
        try {
            
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return null;
    }

}
