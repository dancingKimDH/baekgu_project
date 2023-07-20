package com.example.baekgu_project.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.baekgu_project.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController
{
    @Autowired
    UserService UserService;

    @PostMapping("/create")
    public ResponseEntity createUserInformation(@RequestBody Map paramMap)
    {
        Object result = UserService.createUser(paramMap);
        return ResponseEntity.ok().body(result);
    }
}
