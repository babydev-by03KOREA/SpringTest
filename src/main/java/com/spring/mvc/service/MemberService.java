package com.spring.mvc.service;

import com.spring.mvc.dao.MemberDAO;
import com.spring.mvc.dto.MemberDTO;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

@Service
public class MemberService implements IMemberService {

    @Inject
    private MemberDAO dao;

    @Override
    public void signup(MemberDTO dto) throws Exception {
        dao.signup(dto);
    }

    @Override
    public MemberDTO signin(MemberDTO dto) throws Exception {
        return dao.signin(dto);
    }

    @Override
    public void logout(HttpSession session) throws Exception {
        session.invalidate();
    }
}
