package com.example.baekgu_project.service;

import java.util.ArrayList;
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

    // 회원 리스트
    public Object selectAllMember(Map dataMap) {
        String sqlMapId = "AdminMapper.selectTotal";
        HashMap result = new HashMap<>();
        result.put("resultList", sharedDao.getList(sqlMapId, dataMap));
        return result;
    }

    // 애완동물 현황
    public Object selectAnimal(Map memberId) {
        String sqlMapId = "AdminMapper.selectAnimal";
        
        HashMap result1 = new HashMap();
        ArrayList result = new ArrayList<>();

        result1.put("animalList", sharedDao.getList(sqlMapId, memberId));
        result.add(result1);

        return result;
    }

    // 회원 검색
    public Object selectSearch(Map memberName) {
        String sqlMapId = "AdminMapper.selectSearch";
        
        HashMap result = new HashMap<>();

        result.put("selectedMemberList", sharedDao.getList(sqlMapId, memberName));
        return result;
    
    }

    // Animal LIst
    // public Object selectAnimal(Map dataMap) {

    // String sqlMapId = "AdminMapper.selectAnimal";
    // HashMap animalresult = new HashMap<>();
    // animalresult.put("animalresultList", sharedDao.getOne(sqlMapId, dataMap));

    // return animalresult;
    // }

}
