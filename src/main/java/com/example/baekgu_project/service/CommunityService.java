package com.example.baekgu_project.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.baekgu_project.dao.SharedDao;
import com.example.baekgu_project.utils.Paginations;

@Service
@Transactional
public class CommunityService
{
    @Autowired
    SharedDao sharedDao;

    // 검색(조건-search : TITLE, NAME)
    public Map selectSearch(Map dataMap)
    {
        // 페이지 형성 위한 계산
        int totalCount = (int) this.selectTotal(dataMap);
        
        int currentPage = 1;
        if(dataMap.get("currentPage") != null) {
            currentPage = Integer.parseInt((String)dataMap.get("currentPage"));    // from client in param
        }

        Paginations paginations = new Paginations(totalCount, currentPage);
        HashMap result = new HashMap<>();
        result.put("paginations", paginations); // 페이지에 대한 정보

        // page record 수
        String sqlMapId = "Community.selectSearch";
        dataMap.put("pageScale", paginations.getPageScale());
        dataMap.put("pageBegin", paginations.getPageBegin());
        
        result.put("resultList", sharedDao.getList(sqlMapId, dataMap)); // 표현된 레코드 정보
        return result;
    }

    public Object selectTotal(Map dataMap)
    {
        String sqlMapId = "Community.selectTotal";

        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    } 
}
