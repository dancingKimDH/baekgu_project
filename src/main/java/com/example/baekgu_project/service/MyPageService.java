package com.example.baekgu_project.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.baekgu_project.dao.SharedDao;

@Service
@Transactional
public class MyPageService {

    @Autowired
    UsersService usersService;

    @Autowired
    SharedDao sharedDao;

    public Object selectWithUserName(String username) {
        String sqlMapId = "petStatus.selectAnimalStatus";
        HashMap dataMap = new HashMap<>();
        dataMap.put("username", username);
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

}
