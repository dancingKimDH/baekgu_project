package com.example.baekgu_project.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.baekgu_project.dao.SharedDao;
import com.example.baekgu_project.utils.Paginations;

@Service
@Transactional
public class AdminService {

    @Autowired
    SharedDao sharedDao;

    public Map selectSearchWithPagination(Map dataMap) {

        int totalCount = (int) this.selectTotalNum(dataMap);

        int currentPage = 1;

        if(dataMap.get("currentPage") != null) {
        currentPage = Integer.parseInt((String) dataMap.get("currentPage"));
        }
        Paginations paginations = new Paginations(totalCount, currentPage);
        HashMap result = new HashMap<>();
        result.put("paginations", paginations);

        String sqlMapId = "AdminService.selectSearchWithPagination";
        dataMap.put("pageScale", paginations.getPageScale());
        dataMap.put("pageBegin", paginations.getPageBegin());

        result.put("resultList", sharedDao.getList(sqlMapId, dataMap));
        return result;

    }

    public Object selectTotalNum(Map dataMap) {

        String sqlMapId = "AdminMapper.selectTotalNum";
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;

    }


    // 회원 리스트
    public Map selectAllMember(Map dataMap) {
        
        String sqlMapId = "AdminMapper.selectTotal";
        HashMap result = new HashMap<>();
        result.put("resultList", sharedDao.getList(sqlMapId, dataMap));
        return result;
    }

    // 애완동물 현황
    public Object selectAnimal(Map memberId) {

        String sqlMapId = "AdminMapper.selectAnimal";
        return sharedDao.getList(sqlMapId, memberId);
    }

    // 회원 검색
    public Object selectSearch(Map memberName) {

        String sqlMapId = "AdminMapper.selectSearch";
        HashMap result = new HashMap<>();
        result.put("selectedMemberList", sharedDao.getList(sqlMapId, memberName));
        return result;
    
    }

    // public Object delete(String memberId) {
    //     String sqlMapId = "AdminMapper.delete";
    //     HashMap dataMap = new HashMap<>();
    //     dataMap.put("memberId", memberId);

    //     Object result = sharedDao.delete(sqlMapId, dataMap);
    //     return result;
    // }

}
