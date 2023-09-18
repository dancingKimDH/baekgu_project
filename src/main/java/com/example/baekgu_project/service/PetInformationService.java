package com.example.baekgu_project.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.baekgu_project.dao.SharedDao;

@Service
@Transactional
public class PetInformationService {
    
    @Autowired
    SharedDao sharedDao;

    @Autowired
    AuthsService authsService;

    public Object insertPetInformation(Map dataMap) {
        String sqlMapId = "MemberManageMapper.newpetinsert";
        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object getDetails(String username) {
        String sqlMapId = "PetStatus.selectanimals";
        Object result = sharedDao.getList(sqlMapId, username);
        return result;
    }
}
