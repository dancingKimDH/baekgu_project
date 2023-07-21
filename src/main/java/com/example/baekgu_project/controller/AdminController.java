package com.example.baekgu_project.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.baekgu_project.service.AdminService;

@Controller
@RequestMapping({"/admin"})
public class AdminController {
    
    @Autowired
    AdminService adminService;

    // @GetMapping("/admin_main") 
    // public ResponseEntity showMemberList(@RequestParam Map paramMap) {
    // Object result = adminService.selectAllMember(paramMap);
    // return ResponseEntity.ok().body(result);
    // }

    // @GetMapping("/admin_main")
    // public String admin(@RequestParam Map paramMap, Model model) {
    //     Object result = adminService.selectAllMember(paramMap);
    //     model.addAttribute("data", result);
    //     return "admin/admin_main.jsp";
    // }
 
    @GetMapping("/admin_main")
    public ModelAndView adminMain(@RequestParam Map params, ModelAndView modelAndView) {
        Object result = adminService.selectAllMember(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        modelAndView.setViewName("/WEB-INF/views/admin/admin_main.jsp");
        return modelAndView;
    }

    }

