package com.example.baekgu_project.restapis;

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

    // 애완동물 현황
    @GetMapping("/memberId/{memberId}")
    public ResponseEntity selectAnimal(@PathVariable Map memberId) {
        Object result = adminService.selectAnimal(memberId);
        return ResponseEntity.ok().body(result);
    }

    // 회원 검색
    @GetMapping("/memberName/{Name}")
    public ResponseEntity searchSearch(@PathVariable Map memberName) {
        Object result = adminService.selectSearch(memberName);
        return ResponseEntity.ok().body(result);
    }

}
