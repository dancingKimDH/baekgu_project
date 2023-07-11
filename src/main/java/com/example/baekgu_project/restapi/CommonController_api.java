// package com.example.baekgu_project.restapi;

// import java.util.Map;

// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.http.ResponseEntity;
// import org.springframework.stereotype.Controller;
// import org.springframework.web.bind.annotation.DeleteMapping;
// import org.springframework.web.bind.annotation.GetMapping;
// import org.springframework.web.bind.annotation.PathVariable;
// import org.springframework.web.bind.annotation.PostMapping;
// import org.springframework.web.bind.annotation.PutMapping;
// import org.springframework.web.bind.annotation.RequestBody;
// import org.springframework.web.bind.annotation.RequestMapping;
// import org.springframework.web.bind.annotation.RequestParam;
// import org.springframework.web.bind.annotation.RestController;
// import org.springframework.web.servlet.ModelAndView;

// import com.example.baekgu_project.service.CommonService;


// @Controller
// @RequestMapping("/PetDiary/map")
// public class CommonController_api {
//     @Autowired
//     CommonService petDiaryService;

//     // /selectSearch?search=YEAR&words=2020
//     // /selectSearch/NAME/Ye
//     @PostMapping("/selectSearch")
//     public ModelAndView selectSearch(@RequestParam Map params
//                             , ModelAndView modelAndView) {
//         Object result = petDiaryService.selectSearch(params);
//         modelAndView.addObject("params", params);
//         modelAndView.addObject("result", result);
        
//         modelAndView.setViewName("/WEB-INF/views/main.jsp");
//         return modelAndView;
//     }

//     // delete with MVC
//     @PostMapping("/deleteAndSelectSearch/{UNIQUE_ID}")
//     public ModelAndView deleteAndSelectSearch(@PathVariable String UNIQUE_ID
//                         , @RequestParam Map params, ModelAndView modelAndView) {
//         Object result = petDiaryService.deleteAndSelectSearch(UNIQUE_ID, params);
//         modelAndView.addObject("params", params);
//         modelAndView.addObject("result", result);

//         modelAndView.setViewName("/WEB-INF/views/petdiary/list_map.jsp");
//         return modelAndView;
//     }

//     //  /selectDetail
//     @PostMapping("/selectDetail/{UNIQUE_ID}")
//     public ModelAndView selectDetail(@PathVariable String UNIQUE_ID
//                         , @RequestParam Map params, ModelAndView modelAndView) {
//         Object result = petDiaryService.selectDetail(UNIQUE_ID, params);
//         modelAndView.addObject("params", params);

//         modelAndView.setViewName("/WEB-INF/views/petdiary/list_map.jsp");
//         return modelAndView;
//     }

//      // 입력 create
//      //  /insert
//      @PostMapping("/insert")
//      public ResponseEntity insert(@RequestBody Map paramMap) {
//          Object result = petDiaryService.insert(paramMap);
//          return ResponseEntity.ok().body(result);
//      }
 
//      //  /update
//      @PutMapping("/update")
//      public ResponseEntity update(@RequestBody Map paramMap) {
//          Object result = petDiaryService.update(paramMap);
//          return ResponseEntity.ok().body(result);
//      }
 
//      //  /delete/Car-01
//      @DeleteMapping("/delete/{COMMON_CODE_ID}")
//      public ResponseEntity delete(@PathVariable String COMMON_CODE_ID) {
//          Object result = petDiaryService.delete(COMMON_CODE_ID);
//          return ResponseEntity.ok().body(result);
//      }
 
// }


