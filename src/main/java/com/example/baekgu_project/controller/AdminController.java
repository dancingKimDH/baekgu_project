package com.example.baekgu_project.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.baekgu_project.service.AdminService;

@Controller
@RequestMapping({"/admin"})
public class AdminController {
    
    @Autowired
    AdminService adminService;

    @GetMapping("/admin_main.jsp") 
    public ResponseEntity showMemberList(@RequestParam Map paramMap) {
    Object result = adminService.selectAllMember(paramMap);
    return ResponseEntity.ok().body(result);
    }
    }

