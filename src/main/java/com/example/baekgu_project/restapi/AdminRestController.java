package com.example.baekgu_project.restapi;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.example.baekgu_project.service.AdminService;

@RestController
public class AdminRestController {
    
    @Autowired
    AdminService adminService;
    
    @GetMapping("/memberId/{memberId}")
    public ResponseEntity selectAnimal(@PathVariable Map memberId){
        Object result = adminService.selectAnimal(memberId);
        return ResponseEntity.ok().body(result);
    }

}
