package com.example.baekgu_project.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.baekgu_project.service.CommunityWriteService;

@Controller
@RequestMapping("/commuWrite")
public class CommunityWriteController {
    @Autowired
    CommunityWriteService communityWriteService;

    // /selectDetail/LW-01
    @GetMapping("/selectDetail/{COMWRITE_ID}")
    public ResponseEntity selectDetail(@PathVariable String COMWRITE_ID) {
        Object result = communityWriteService.selectDetail(COMWRITE_ID);
        return ResponseEntity.ok().body(result);
    }

    // create
    // @PostMapping("/insert")
    // public ResponseEntity insert(@RequestParam Map paramMap) {
    //     Object result = communityWriteService.insert(paramMap);
    //     return ResponseEntity.ok().body(result);
    // }
    // insert 완료 후 ↓ 

    // /insertAndView/LW-06
    @PostMapping("/insertAndView/{UNIQUE_ID}")
    public ModelAndView insertAndView(@PathVariable String UNIQUE_ID
                                    , @RequestParam Map params, ModelAndView modelAndView) {
        Object result = communityWriteService.insertAndView(UNIQUE_ID,params);
        modelAndView.addObject("params", params);
        modelAndView.addObject("result", result);

        modelAndView.setViewName("/WEB-INF/views/community/community_write.jsp");
        return modelAndView;
    }


    // update
    @PutMapping("/update")
    public ResponseEntity update(@RequestBody Map paramMap) {
        Object result = communityWriteService.update(paramMap);
        return ResponseEntity.ok().body(result);
    }

    // delete with MVC
    @PostMapping("/delete")
    public ModelAndView delete(@RequestParam Map params
                            , ModelAndView modelAndView) {
        Object result = communityWriteService.delete(params);
        modelAndView.addObject("params", params);
        modelAndView.setViewName("/WEB-INF/views/community/community_write.jsp");
        return modelAndView;
    }

    // /selectAll/LW-01
    @GetMapping("/selectAll/{COMWRITE_ID}")
    public ResponseEntity selectAll(@PathVariable String COMWRITE_ID) {
        Object result = communityWriteService.selectAll(COMWRITE_ID);
        return ResponseEntity.ok().body(result);
    }

    @GetMapping("/selectInUID")
    public ResponseEntity selectInUID(@RequestBody Map paramMap) {
        Object result = null;
        try {
            result = communityWriteService.selectInUID(paramMap);
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(result);
        }
        return ResponseEntity.ok().body(result);
    } 

}
