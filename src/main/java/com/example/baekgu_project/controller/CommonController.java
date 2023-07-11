package com.example.baekgu_project.controller;

import java.util.Map;

import javax.sql.CommonDataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.baekgu_project.service.CommonService;

@Controller
@RequestMapping("/PetDiary")
public class CommonController {
    @Autowired
    CommonService commonService;

    // /selectSearch?search=YEAR&words=2020
    // /selectSearch/NAME/Ye
    @GetMapping("/selectSearch")
    public ModelAndView selectSearch(@RequestParam Map params
                            , ModelAndView modelAndView) {
        Object result = commonService.selectSearch(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        
        modelAndView.setViewName("/WEB-INF/views/testmain.jsp");
        return modelAndView;
    } 
}


