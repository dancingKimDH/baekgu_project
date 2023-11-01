package com.example.baekgu_project.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
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
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;

    }

    public Object deletePet(Map dataMap) {
        String sqlMapId = "MemberManage.deletePet";
        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }
}
