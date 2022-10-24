package com.spring.mvc.dao;

import com.spring.mvc.dto.MemberDTO;

import javax.servlet.http.HttpSession;

public interface IMemberDAO {
    //  회원가입 DAO
    public void signup(MemberDTO dto) throws Exception;
    //  로그인
    public MemberDTO signin(MemberDTO dto) throws Exception;
}
