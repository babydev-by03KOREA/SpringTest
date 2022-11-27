package com.spring.mvc.service;

import com.spring.mvc.dao.RestMemberDAO;
import com.spring.mvc.dto.RestMemberDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RestMemberService {

    @Autowired
    RestMemberDAO rdao;

    public List<RestMemberDTO> getAllUsers() {
        return rdao.getAllUser();
    }

    public RestMemberDTO getUserID(String userId) {
        return rdao.getUserID(userId);
    }

    public RestMemberDTO registerUser(RestMemberDTO dto) {
        return rdao.InsertUser(dto);
    }

    public void modifyUser(String userId, RestMemberDTO dto) {
        rdao.updateUser(userId, dto);
    }

    public void removeUser(String userId) {
        rdao.deleteUser(userId);
    }
}
