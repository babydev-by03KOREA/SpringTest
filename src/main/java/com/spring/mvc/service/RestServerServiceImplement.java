package com.spring.mvc.service;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class RestServerServiceImplement implements RestServerService {

    @Override
    public Map<String, String> apiService() throws Exception {
        Map<String, String> apiMap = new HashMap<>();
        apiMap.put("API", "Service JSON");
        return apiMap;
    }
}
