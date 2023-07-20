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

    @PostMapping("/insert")
    public ResponseEntity insert(@RequestBody Map paramMap)
    {
        String id = (String) paramMap.get("id");
        String password = (String) paramMap.get("password");
        String email = (String) paramMap.get("email");
        String name = (String) paramMap.get("name");
        String gender = (String) paramMap.get("gender");
        String birth = (String) paramMap.get("birth");
        String telecom = (String) paramMap.get("telecom");
        String number = (String) paramMap.get("number");

        Object result = UserService.insert(paramMap);
        return ResponseEntity.ok().body(result);
    }
}
