package com.spring.mvc.service;

import com.spring.mvc.dto.RestMemberDTO;

import java.util.List;

public interface RestMemberService {
    public List<RestMemberDTO> getAllUsers() throws Exception;
    public RestMemberDTO getUserID(String userId) throws Exception;
    public RestMemberDTO registerUser(RestMemberDTO dto) throws Exception;
    public void modifyUser(String userId, RestMemberDTO dto) throws Exception;
    public void removeUser(String userId) throws Exception;
}
