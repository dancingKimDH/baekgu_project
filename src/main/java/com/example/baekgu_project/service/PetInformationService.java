package com.example.baekgu_project.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.baekgu_project.dao.SharedDao;

@Service
@Transactional
public class PetInformationService {
    
    @Autowired
    SharedDao sharedDao;

    @Autowired
    AuthsService authsService;

    @Autowired
    MyPageService myPageService;

    public Object deletePet(Map dataMap) {
        String sqlMapId = "MemberManage.deletePet";
        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }


}
