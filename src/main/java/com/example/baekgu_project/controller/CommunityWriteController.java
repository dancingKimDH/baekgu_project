// package com.example.baekgu_project.controller;

// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.stereotype.Controller;
// import org.springframework.web.bind.annotation.DeleteMapping;
// import org.springframework.web.bind.annotation.GetMapping;
// import org.springframework.web.bind.annotation.PathVariable;
// import org.springframework.web.bind.annotation.PostMapping;
// import org.springframework.web.bind.annotation.PutMapping;
// import org.springframework.web.bind.annotation.RequestBody;
// import org.springframework.web.bind.annotation.RequestMapping;
// import org.springframework.web.bind.annotation.RequestParam;
// import org.springframework.web.servlet.ModelAndView;

// import com.example.baekgu_project.service.CommunityWriteService;


//     @GetMapping("/selectSearch")
//     public ModelAndView selectSearch(@RequestParam Map params, ModelAndView modelAndView) {
//         Object result = carInforsService.selectSearch(params);
//         modelAndView.addObject("params", params); // 메인컨트롤러에서가져옴
//         modelAndView.addObject("result", result);

//         // modelAndView.setViewName("/WEB-INF/views/main.jsp");
//         modelAndView.setViewName("/WEB-INF/views/carinfor/list.jsp");

//         return modelAndView;
//     }

//     @GetMapping("/selectAll/{CAR_INFOR_ID}")
//     public ResponseEntity selectAll(@PathVariable String CAR_INFOR_ID) {
//         Object result = carInforsService.selectAll(CAR_INFOR_ID);
//         return ResponseEntity.ok().body(result);
//     }

//     // 입력 create
//     @PostMapping("/insert")
//     public ResponseEntity insert(@RequestBody Map paramMap) {
//         Object result = carInforsService.insert(paramMap);
//         return ResponseEntity.ok().body(result);
//     }

//         // update
//     @PutMapping("/update")
//     public ResponseEntity update(@RequestBody Map paramMap) {
//         Object result = carInforsService.update(paramMap);
//         return ResponseEntity.ok().body(result);
//     }

//     // delete
//     @DeleteMapping("/delete/{CAR_INFOR_ID}")
//     public ResponseEntity delete(@PathVariable String CAR_INFOR_ID) {
//         Object result = carInforsService.delete(CAR_INFOR_ID);
//         return ResponseEntity.ok().body(result);
//     }













// @Controller
// @RequestMapping("/commuWrite")
// public class CommunityWriteController {
//     @Autowired
//     CommunityWriteService communityWriteService;


//     @GetMapping({ "/community_write" })
//     public ModelAndView community_write(ModelAndView modelAndView) {
//         modelAndView.setViewName("/WEB-INF/views/community/community_write.jsp");
//         return modelAndView;
//     }

//     @GetMapping({ "/myPage" })
//     public ModelAndView myPage(ModelAndView modelAndView) {
//         modelAndView.setViewName("/WEB-INF/views/myPage/myPage.jsp");
//         return modelAndView;
//     }

//     @GetMapping("/statistics")
//     public ModelAndView statistics(ModelAndView modelAndView) {
//         modelAndView.setViewName("/WEB-INF/views/myPage/statistics.jsp");
//         return modelAndView;
//     }

//     @GetMapping("/myNewPet")
//     public ModelAndView myNewPet(ModelAndView modelAndView) {
//         modelAndView.setViewName("/WEB-INF/views/myPage/myNewPet.jsp");
//         return modelAndView;
//     }

//     @GetMapping("/animals")
//     public ModelAndView animals(ModelAndView modelAndView) {
//         modelAndView.setViewName("/WEB-INF/views/animals.jsp");
//         return modelAndView;
//     }

//     @GetMapping("/admin_main")
//     public ModelAndView admin_main(ModelAndView modelAndView) {
//         modelAndView.setViewName("/WEB-INF/views/admin/admin_main.jsp");
//         return modelAndView;
//     }
// }
