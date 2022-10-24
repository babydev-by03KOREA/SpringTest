package com.spring.mvc.dao;

import com.spring.mvc.dto.MemberDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

@Repository
public class MemberDAO implements IMemberDAO {

    @Inject
    private SqlSession session;

    private static String namespace = "com.spring.mvc.mybatis.member-mapping";

    @Override
    public void signup(MemberDTO dto) throws Exception {
        session.insert(namespace + ".signup", dto);
    }

    @Override
    public MemberDTO signin(MemberDTO dto) throws Exception {
        return session.selectOne(namespace + ".signin", dto);
    }

}
