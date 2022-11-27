package com.spring.mvc.service;

import com.spring.mvc.dao.RestMemberDAO;
import com.spring.mvc.dao.RestMemberDAOImplement;
import com.spring.mvc.dto.RestMemberDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RestMemberServiceImplements implements RestMemberService {

    @Autowired
    RestMemberDAOImplement rdao;

    @Override
    public List<RestMemberDTO> getAllUsers() throws Exception {
        return rdao.getAllUser();
    }

    @Override
    public RestMemberDTO getUserID(String userId) throws Exception {
        return rdao.getUserID(userId);
    }

    @Override
    public RestMemberDTO registerUser(RestMemberDTO dto) throws Exception {
        return rdao.InsertUser(dto);
    }

    @Override
    public void modifyUser(String userId, RestMemberDTO dto) throws Exception {
        rdao.updateUser(userId, dto);
    }

    @Override
    public void removeUser(String userId) throws Exception {
        rdao.deleteUser(userId);
    }
}
