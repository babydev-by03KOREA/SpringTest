package com.spring.mvc.dao;

import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class RestDAOImplement implements RestDAO {
    @Override
    public Map<String, String> apiDAO() throws Exception {
        Map<String, String> StringAPI = new HashMap<>();
        StringAPI.put("APi", "DAO JSON TEST");
        return StringAPI;
    }
}
