package com.example.baekgu_project.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.baekgu_project.dao.SharedDao;

@Service
@Transactional
public class UserService
{
    @Autowired
    SharedDao sharedDao;

    // 입력
    public Object createUser(Map dataMap)
    {
        String sqlMapId = "User.create";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }
}
