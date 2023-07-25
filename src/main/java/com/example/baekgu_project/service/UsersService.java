package com.example.baekgu_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.util.List;
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
        String pw = (String) dataMap.get("PW");        
        dataMap.put("PW", bCryptPasswordEncoder.encode(pw));

        String sqlMapId = "User.create";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object insertWithAuths(Map dataMap)
    {
        // password 암호화
        String pw = (String) dataMap.get("PW");
        dataMap.put("PW", bCryptPasswordEncoder.encode(pw));

        // 사용자 정보를 먼저 추가하고 해당 ID를 가져옴
        Object result = this.insert(dataMap);

        // authsService.insert(dataMap); 를 아래와 같이 수정
        List<String> authList = (List<String>) dataMap.get("authList");
        if (authList != null && !authList.isEmpty()) {
            dataMap.put("authList", authList);
            result = authsService.insert(dataMap);
        }

        return result;

    }

    public Object selectByUID(Map dataMap)
    {
        String sqlMapId = "User.selectByUID";

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