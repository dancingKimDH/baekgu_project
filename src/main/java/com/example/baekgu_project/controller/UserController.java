package com.example.baekgu_project.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.example.baekgu_project.service.UserService;

public class UserController
{
    @Autowired
    UserService UserService;

    @PostMapping("/insert")
    public ResponseEntity insert(@RequestBody Map paramMap)
    {
        Object result = UserService.insert(paramMap);
        return ResponseEntity.ok().body(result);
    }
}
