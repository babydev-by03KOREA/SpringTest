package com.spring.mvc.restAPI;

import com.spring.mvc.dto.RestMemberDTO;
import com.spring.mvc.service.RestMemberServiceImplements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
// 실무에서는 url 복수형으로 잡음
@RequestMapping("/members")
public class MemberAPIController {

    @Autowired
    private RestMemberServiceImplements restService;

    private static final Logger logger = LoggerFactory.getLogger(MemberAPIController.class);

    @GetMapping("")
    public List<RestMemberDTO> getAllUsers() throws Exception {
        return restService.getAllUsers();
    }

    @GetMapping("/{userId}")
    public RestMemberDTO getUserId(@PathVariable("userId") String userId) throws Exception {
        return restService.getUserID(userId);
    }

    @PostMapping("")
    @ResponseBody
    public RestMemberDTO registerUser(@RequestBody RestMemberDTO dto) throws Exception {
        return restService.registerUser(dto);
    }

    // 유저 수정
    // uri : localhost:0000/users/{userid}
    @PutMapping("/{userId}")
    public void modifyUser(@PathVariable("userId") String userId, @RequestBody RestMemberDTO dto) throws Exception {
        restService.modifyUser(userId, dto);
    }

    // 유저 삭제
    // uri : localhost:0000/users
    @DeleteMapping("/{userId}")
    public void removeUser(@PathVariable("userId") String userId) throws Exception {
        restService.removeUser(userId);
    }
}
