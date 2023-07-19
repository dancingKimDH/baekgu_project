package com.example.baekgu_project.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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
public class CommonController {
    @Autowired
    CommonService commonService;

    @GetMapping({ "/login" })
    public ModelAndView login(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/login/login.jsp");
        return modelAndView;
    }

    @GetMapping({ "/register" })
    public ModelAndView register(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/login/register.jsp");
        return modelAndView;
    }

    @GetMapping({ "/introduce" })
    public ModelAndView introduce(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/introduce.jsp");
        return modelAndView;
    }

    @GetMapping({ "/guide" })
    public ModelAndView guide(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/guide.jsp");
        return modelAndView;
    }

   @GetMapping({ "/community" })
    public ModelAndView community(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/community/community.jsp");
        return modelAndView;
    }

   @GetMapping({ "/community_write" })
    public ModelAndView community_write(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/community/community_write.jsp");
        return modelAndView;
    }

   @GetMapping({ "/myPage" })
    public ModelAndView myPage(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/myPage/myPage.jsp");
        return modelAndView;
    }

    @GetMapping("/my_pet_diary")
    public ModelAndView my_pet_diary(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/petdiary/my_pet_diary.jsp");
        return modelAndView;
    }

    @GetMapping("/my_pet_manage")
    public ModelAndView my_pet_manage(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/petdiary/my_pet_manage.jsp");
        return modelAndView;
    }

    @GetMapping("/new_pet")
    public ModelAndView new_pet(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/petdiary/new_pet.jsp");
        return modelAndView;
    }

    @GetMapping("/pet_introduce")
    public ModelAndView pet_introduce(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/petdiary/pet_introduce.jsp");
        return modelAndView;
    }

    @GetMapping("/statistics")
    public ModelAndView statistics(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/petdiary/statistics.jsp");
        return modelAndView;
    }

    @GetMapping("/admin_main")
    public ModelAndView admin_main(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/admin/admin_main.jsp");
        return modelAndView;
    }
}
