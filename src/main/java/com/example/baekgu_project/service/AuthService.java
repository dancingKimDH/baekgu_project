// package com.example.baekgu_project.service;

// import java.util.ArrayList;
// import java.util.List;
// import java.util.Map;

// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.stereotype.Service;
// import org.springframework.transaction.annotation.Transactional;

// import com.example.baekgu_project.dao.SharedDao;
// import com.example.baekgu_project.util.Commons;

// @Service
// @Transactional
// public class AuthService {
    
//     @Autowired
//     SharedDao sharedDao;

//     @Autowired
//     Commons commonUtils;

//     public Object insert(Map dataMap) {
//         List authList = new ArrayList<>();
//         authList.add("ROLE_GUEST");
//         authList.add(dataMap.get("auth"));
//         dataMap.put("authList", authList);

//         String sqlMapId = "Auths.insert";
//         Object result = sharedDao.insert(sqlMapId, dataMap);
//         return result;
//     }
// }