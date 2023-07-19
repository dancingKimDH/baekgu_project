package com.example.baekgu_project.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.baekgu_project.dao.SharedDao;

public class UserService
{
    @Autowired
    SharedDao sharedDao;
    public Map selectSearch(Map dataMap)
    {
        String sqlMapId = "User.selectSearch";
        
        HashMap result = new HashMap<>();
        result.put("resultList", sharedDao.getList(sqlMapId, dataMap));
        return result;
    }

    // 검색(조건-search : NAME, MEMBER_ID)
    public Object selectSearch(String search, String words)
    {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "User.selectSearch";
        HashMap dataMap = new HashMap<>();
        dataMap.put("search", search);
        dataMap.put("words", words);

        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }


    // 전체
    public Object selectAll(String MEMBER_ID)
    {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "User.selectAll";
        HashMap dataMap = new HashMap<>();
        dataMap.put("MEMBER_ID", MEMBER_ID);

        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

    // 상세
    public Object selectDetail(String MEMBER_ID)
    {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "User.selectByUID";
        HashMap dataMap = new HashMap<>();
        dataMap.put("MEMBER_ID", MEMBER_ID);

        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object selectDetail(String MEMBER_ID, Map dataMap)
    {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "User.selectByUID";
        dataMap.put("MEMBER_ID", MEMBER_ID);

        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    // 입력
    public Object insert(Map dataMap)
    {
        String sqlMapId = "User.insert";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    // update
    public Object update(Map dataMap)
    {
        String sqlMapId = "User.update";
        Object result = sharedDao.update(sqlMapId, dataMap);
        return result;
    }


    // (delete) MVC view
    public Object delete(Map dataMap)
    {
        String sqlMapId = "User.delete";

        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }

    // (delete) MVC view
    public Object deleteAndSelectSearch(String UNIQUE_ID, Map dataMap)
    {
        dataMap.put("MEMBER_ID", UNIQUE_ID);

        HashMap result = new HashMap<>();
        result.put("deleteCount", this.delete(dataMap));

        result.putAll(this.selectSearch(dataMap));
        return result;
    }

    // rest api
    public Object delete(String MEMBER_ID)
    {
        String sqlMapId = "User.delete";
        HashMap dataMap = new HashMap<>();
        dataMap.put("MEMBER_ID", MEMBER_ID);

        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }

    // 2PC(2 pace commit) : 같은 값 인서트 2번
    public Object insertDouble(Map dataMap)
    {
        String sqlMapId = "User.insert";
        // sucess
        Object result = sharedDao.insert(sqlMapId, dataMap);
        // error
        result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }    
}
