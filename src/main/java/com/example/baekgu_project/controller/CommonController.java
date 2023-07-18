package com.example.baekgu_project.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.baekgu_project.service.CommonService;

@Controller
@RequestMapping("/main")
public class CommonController {
    @Autowired
    CommonService commonService;

    @GetMapping({"/my_pet_diary"})
    public ModelAndView main(ModelAndView modelAndView)
    {
        modelAndView.setViewName("/WEB-INF/views/petdiary/my_pet_diary.jsp");
        return modelAndView;
    }


}
