package com.spring.mvc.service;

import com.spring.mvc.dto.MemberDTO;

import javax.servlet.http.HttpSession;

public interface IMemberService {
    //  회원가입 Service
    public void signup(MemberDTO dto) throws Exception;
    //  로그인 Service
    public MemberDTO signin(MemberDTO dto) throws Exception;
    // LogOut > SessionRevoke
    public void logout(HttpSession session) throws Exception;
}
