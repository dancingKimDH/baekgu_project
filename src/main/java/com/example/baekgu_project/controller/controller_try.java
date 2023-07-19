package com.example.baekgu_project.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.baekgu_project.service.service_try;

public class controller_try {
    @Controller
    public class AnimalController {
        private service_try service;
        public AnimalController(service_try service) {
            this.service = service;
        }

        @GetMapping("/animals")
        public String displayAnimals(Model model) {
            Map<String, Object> dataMap = new HashMap<>();
            Map<String, Object> result = service.selectSearch(dataMap);
            model.addAttribute("animals", result.get("resultlist"));
            return "animals";
        }
        
    }
}
