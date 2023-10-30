package com.example.baekgu_project.restapis;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.baekgu_project.service.CommunityService;

@RestController
public class AnimalController {

    @Autowired
    CommunityService communityService;

    @PostMapping("/addAnimal")
    public ResponseEntity<Object> addAnimal(@RequestBody Map<String, Object> dataMap) {
        Object result = communityService.addAnimal(dataMap);
        return ResponseEntity.ok(result);
    }
}
