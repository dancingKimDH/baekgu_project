package com.example.baekgu_project.restapis;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.baekgu_project.service.CommunityService;
import com.example.baekgu_project.service.MyPageService;

@RestController
public class AnimalController {

    @Autowired
    CommunityService communityService;

    @Autowired
    MyPageService myPageService;

    @PostMapping("/addAnimal")
    public ModelAndView addAnimal(@RequestBody Map<String, Object> dataMap, ModelAndView modelAndView) {
        Object result = communityService.addAnimal(dataMap);

        Object returnedResult = myPageService.selectWithUserName(dataMap);

        modelAndView.addObject("params", dataMap);
        modelAndView.addObject("result", returnedResult);

        return modelAndView;
    }
}
