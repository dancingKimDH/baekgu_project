package com.example.baekgu_project.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.example.baekgu_project.dao.SharedDao;

@Service
@Transactional
public class service_try {
    @Autowired
    SharedDao sharedDao;

    public Map selectSearch(Map dataMap) {
        String sqlMapId = "PetDiary.TelecomSearchAll";
        HashMap result = new HashMap<>();
        result.put("resultlist", sharedDao.getList(sqlMapId, dataMap));
        return result;
    }
}
