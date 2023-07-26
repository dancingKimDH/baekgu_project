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
    
    // 상세
    public Object selectDetail(String COMWRITE_ID) {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "CommunityWrite.selectByUID_CW";
        HashMap dataMap = new HashMap<>();
        dataMap.put("COMWRITE_ID", COMWRITE_ID);
        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    // 입력
    public Object insert(Map dataMap) {
        String sqlMapId = "CommunityWrite.insert_CW";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    // update
    public Object update(Map dataMap) {
        String sqlMapId = "CommunityWrite.update_CW";
        Object result = sharedDao.update(sqlMapId, dataMap);
        return result;
    }

     // (delete) MVC view
    public Object delete(Map dataMap) {
        String sqlMapId = "CommunityWrite.delete_CW";
        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }

    // (delete) rest api
    public Object delete(String COMWRITE_ID) {
        String sqlMapId = "CommunityWrite.delete_CW";
        HashMap dataMap = new HashMap<>();
        dataMap.put("COMWRITE_ID", COMWRITE_ID);

        Object result = sharedDao.delete(sqlMapId, dataMap);
        return result;
    }

    // 전체
    public Object selectAll(String COMWRITE_ID) {
        // Object getOne(String sqlMapId, Object dataMap)
        String sqlMapId = "CommunityWrite.selectAll_CW";
        HashMap dataMap = new HashMap<>();
        dataMap.put("COMWRITE_ID", COMWRITE_ID);
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

    // foreach HashMap.put("COMWRITE_ID_LIST", COMWRITE_ID_LIST)
    public Object selectInUID(Map dataMap) {
        String sqlMapId = "CommunityWrite.selectInUID_CW";
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object insertAndView(String uNIQUE_ID, Map params) {
        return null;
    }  
   
}
