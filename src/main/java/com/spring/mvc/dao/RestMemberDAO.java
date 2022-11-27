package com.spring.mvc.dao;

import com.spring.mvc.dto.RestMemberDTO;

import java.util.List;

public interface RestMemberDAO {
    public List<RestMemberDTO> getAllUser() throws Exception;
    public RestMemberDTO getUserID(String userId) throws Exception;
    public RestMemberDTO InsertUser(RestMemberDTO dto) throws Exception;
    public void updateUser(String userId, RestMemberDTO dto) throws Exception;
    public void deleteUser(String userId) throws Exception;
}
