package com.example.baekgu_project.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.baekgu_project.dao.SharedDao;

@Service
@Transactional
public class AdminService {

    @Autowired
    SharedDao sharedDao;

    public Object selectAllMember(Map dataMap) {
        String sqlMapId = "AdminMapper.selectTotal";
        HashMap result = new HashMap<>();
        result.put("resultList", sharedDao.getList(sqlMapId, dataMap));
             
        return result;
    }

    // Animal LIst
    // public Object selectAnimal(Map dataMap) {

    //     String sqlMapId = "AdminMapper.selectAnimal";
    //     HashMap animalresult = new HashMap<>();
    //     animalresult.put("animalresultList", sharedDao.getOne(sqlMapId, dataMap));

    //     return animalresult;
    // }


}
