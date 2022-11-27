package com.spring.mvc.dao;

import com.spring.mvc.dto.RestMemberDTO;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class RestMemberDAO {
    public static List<RestMemberDTO> rdto;

    static {
        rdto = new ArrayList<>();
        rdto.add(new RestMemberDTO(1, "test1", "testID1", "1234"));
        rdto.add(new RestMemberDTO(2, "test2", "testID2", "1234"));
        rdto.add(new RestMemberDTO(3, "test3", "testID3", "1234"));
        rdto.add(new RestMemberDTO(4, "test4", "testID4", "1234"));
        rdto.add(new RestMemberDTO(5, "test5", "testID5", "1234"));
    }

    public List<RestMemberDTO> getAllUser() {
        return rdto;
    }

    public RestMemberDTO getUserID(String userId) {
        return rdto.stream()
                .filter(rdto -> rdto.getUserId().equals(userId))
                .findAny().orElse(new RestMemberDTO(-1,"","",""));
    }

    public RestMemberDTO InsertUser(RestMemberDTO dto) {
        rdto.add(dto);
        return dto;
    }

    public void updateUser(String userId, RestMemberDTO dto) {
        rdto.stream()
                .filter(rdto -> rdto.getUserId().equals(userId))
                .findAny().orElse(new RestMemberDTO(-1, "", "", ""))
                .setUserName(dto.getUserName());
    }

    public void deleteUser(String userId) {
        rdto.removeIf(rdto -> rdto.getUserId().equals(userId));
    }
}
