package com.example.baekgu_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.util.Map;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.baekgu_project.dao.SharedDao;
import com.example.baekgu_project.utils.Commons;

@Service
@Transactional
public class UsersService
{

    @Autowired
    SharedDao sharedDao;

    @Autowired
    Commons commonUtils;

    @Autowired
    AuthsService authsService;

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    // 회원 가입
    public Object insert(Map dataMap)
    {
        // password 암호화 
        String password = (String) dataMap.get("password");        
        dataMap.put("password", bCryptPasswordEncoder.encode(password));

        String sqlMapId = "Users.create";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object insertWithAuths(Map dataMap)
    {
        Object result = this.insert(dataMap);
        result = authsService.insert(dataMap);
        return result;
    }

    public Object selectByUID(Map dataMap)
    {
        String sqlMapId = "Users.selectByUID";

        Object result = sharedDao.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object selectByUIDWithAuths(Map dataMap)
    {
        Map result = (Map) this.selectByUID(dataMap);
        result.putAll(authsService.selectWithUSERNAME(dataMap));
        return result;
    }
}