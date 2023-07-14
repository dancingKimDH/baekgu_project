package com.example.baekgu_project.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.baekgu_project.service.CommonService;

@Controller
@RequestMapping("/main")
public class CommonController
{
    @Autowired
    CommonService commonService;

    // 커뮤니티
    @GetMapping("/selectCommunity")
    public ModelAndView selectCommunity(@RequestParam Map params, ModelAndView modelAndView)
    {
        Object result = commonService.selectSearch(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        
        modelAndView.setViewName("커뮤니티 게시판");
        return modelAndView;
    }

    // 커뮤니티 검색 결과
    @RequestMapping(value = "/commonSearch", method = { RequestMethod.GET, RequestMethod.POST })
    public ModelAndView selectSearch(@RequestParam Map params, ModelAndView modelAndView)
    {
        Object result = commonService.selectSearch(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        
        modelAndView.setViewName("커뮤니티 게시판");
        return modelAndView;
    }

    // 마이 페이지
    @GetMapping("/selectMyPage/{UNIQUE_ID}")
    public ModelAndView selectMyPage(@RequestParam Map params, ModelAndView modelAndView)
    {
        Object result = commonService.selectSearch(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        
        modelAndView.setViewName("마이 페이지 화면");
        return modelAndView;
    }

    // 통계
    @GetMapping("/selectTotal/{UNIQUE_ID}")
    public ModelAndView selectTotal(@RequestParam Map params, ModelAndView modelAndView)
    {
        Object result = commonService.selectSearch(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        
        modelAndView.setViewName("통계 화면");
        return modelAndView;
    }

    // 관리자 화면
    @GetMapping("/selectAdmin/{UNIQUE_ID}")
    public ModelAndView selectAdmin(@RequestParam Map params, ModelAndView modelAndView)
    {
        Object result = commonService.selectSearch(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);
        
        modelAndView.setViewName("관리자 화면");
        return modelAndView;
    }

    // 회원 가입
    @PostMapping("/insertRegister")
    public ModelAndView insertRegister(@RequestParam Map params, ModelAndView modelAndView)
    {
        modelAndView.setViewName("회원가입 화면");
        return modelAndView;
    }

    // 커뮤니티 글 작성
    @PostMapping("/insertCommunity")
    public ModelAndView insertCommunity(@RequestParam Map params, ModelAndView modelAndView)
    {
        modelAndView.setViewName("커뮤니티 글 작성 화면");
        return modelAndView;
    }

    // 신규 동물 등록
    @PostMapping("/insertAnimals")
    public ModelAndView insertAnimals(@RequestParam Map params, ModelAndView modelAndView)
    {
        modelAndView.setViewName("동물 등록 화면");
        return modelAndView;
    }

    // 커뮤니티 글 수정
    @PostMapping("/updateCommunity/{UNIQUE_ID}")
    public ModelAndView updateCommunity(@PathVariable String UNIQUE_ID, @RequestParam Map params, ModelAndView modelAndView)
    {
        Object result = commonService.update(params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);

        modelAndView.setViewName("커뮤니티 글 수정 및 삭제 화면");
        return modelAndView;
    }

    // 커뮤니티 글 삭제
    @PostMapping("/deleteCommunity/{UNIQUE_ID}")
    public ModelAndView deleteCommunity(@PathVariable String UNIQUE_ID, @RequestParam Map params, ModelAndView modelAndView)
    {
        Object result = commonService.deleteAndSelectSearch(UNIQUE_ID, params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);

        modelAndView.setViewName("커뮤니티 글 수정 및 삭제 화면");
        return modelAndView;
    }

    // 회원 탈퇴
    @PostMapping("/deleteRegister/{UNIQUE_ID}")
    public ModelAndView deleteAndSelectSearch(@PathVariable String UNIQUE_ID, @RequestParam Map params, ModelAndView modelAndView)
    {
        Object result = commonService.deleteAndSelectSearch(UNIQUE_ID, params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);

        modelAndView.setViewName("회원 탈퇴 화면");
        return modelAndView;
    }

    // 관리자 회원 삭제
    @PostMapping("/deleteAdmin/{UNIQUE_ID}")
    public ModelAndView deleteAdmin(@PathVariable String UNIQUE_ID, @RequestParam Map params, ModelAndView modelAndView)
    {
        Object result = commonService.deleteAndSelectSearch(UNIQUE_ID, params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);

        modelAndView.setViewName("관리자 전용 화면");
        return modelAndView;
    }
}


