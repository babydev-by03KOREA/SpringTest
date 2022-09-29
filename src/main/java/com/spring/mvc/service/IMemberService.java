package com.spring.mvc.service;

import com.spring.mvc.dto.MemberDTO;

public interface IMemberService {
//  회원가입 Service
    public void signup(MemberDTO dto) throws Exception;
}
