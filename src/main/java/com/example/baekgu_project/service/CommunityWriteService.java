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
public class CommunityWriteService {
    @Autowired
    SharedDao sharedDao;
    
    // foreach HashMap.put("COMWRITE_ID_LIST", COMWRITE_ID_LIST)
    public Object selectInUID(Map dataMap) {
        String sqlMapId = "CommunityWrite.selectInUID";
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

    // 검색
    public Object selectSearch(Map dataMap) {
        String sqlMapId = "CommunityWrite.selectSearch";
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }
 
    // 전체
    public Object selectAll(String COMWRITE_ID) {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "CommunityWrite.selectAll";
        HashMap dataMap = new HashMap<>();
        dataMap.put("COMWRITE_ID", COMWRITE_ID);
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

    // // 상세
    // public Object selectDetail(String COMWRITE_ID) {
    //     // Object getOne(String sqlMapId, Object dataMap)
    //     String sqlMapId = "CommunityWrite.selectDetail";
    //     HashMap dataMap = new HashMap<>();
    //     dataMap.put("COMWRITE_ID", COMWRITE_ID);
    //     Object result = sharedDao.getOne(sqlMapId, dataMap);
    //     return result;
    // }

    
    // 입력
    public Object insert(Map dataMap) {
        String sqlMapId = "CommunityWrite.insert";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    // update
    public Object update(Map dataMap) {
        String sqlMapId = "CommunityWrite.update";
        Object result = sharedDao.update(sqlMapId, dataMap);
        return result;
    }


    // (delete) MVC view
    public Object delete(Map dataMap) {
        String sqlMapId = "CommunityWrite.delete";
        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }

    // (delete) MVC view
    public Object deleteAndSelectSearch(Map dataMap) {
        HashMap result = new HashMap<>();
        result.put("deleteCount", this.delete(dataMap));
        result.put("resultList", this.selectSearch(dataMap));
        return result;
    }

    // (delete) rest api
    public Object delete(String COMWRITE_ID) {
        String sqlMapId = "CommunityWrite.delete";
        HashMap dataMap = new HashMap<>();
        dataMap.put("COMWRITE_ID", COMWRITE_ID);

        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }

    // 2PC(2 pace commit) : 같은 값 인서트 2번
    public Object insertDouble(Map dataMap) {
        String sqlMapId = "CommunityWrite.insert";
        // sucess
        Object result = sharedDao.insert(sqlMapId, dataMap);
        // error
        result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object selectSearch(String search, String words) {
        return null;
    }
}
