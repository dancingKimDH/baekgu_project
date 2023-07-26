package com.example.baekgu_project.security;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.baekgu_project.service.MemberService;

@Service
public class PrincipalMemberService implements UserDetailsService
{
    @Autowired
    MemberService memberService;

    @Override
    public UserDetails loadUserByUsername(String membername) throws UsernameNotFoundException
    {
        Map dataMap = new HashMap<>();
        dataMap.put("ID", membername);
        Object usernameObj = username;
        Map resultMap = (Map) usersService.selectByUIDWithAuths(dataMap);

        PrincipalMember principalUser = new PrincipalMember(resultMap);

        return principalUser;
    }
    
}
