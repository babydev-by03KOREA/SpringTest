package com.spring.mvc.dao;

import com.spring.mvc.dto.MemberDTO;

public interface IMemberDAO {
    //  회원가입 DAO
    public void signup(MemberDTO dto) throws Exception;
}
