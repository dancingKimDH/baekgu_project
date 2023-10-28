package com.example.baekgu_project.service;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
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

    public Object selectWithUserName(Map dataMap) {

        String sqlMapId = "MemberManage.selectAnimalStatus";
        HashMap result = new HashMap();
        result.put("resultList", sharedDao.getList(sqlMapId, dataMap));
        return result;

    }
}
