package com.spring.mvc.restAPI;

import com.spring.mvc.service.RestServerServiceImplement;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/API")
// Spring 4.3V 이전 > @Controller + @ResponseBody / 이후 > @RestController 자동 JSON 반환
public class RestAPIController {

    private RestServerServiceImplement restService;

    public RestAPIController(RestServerServiceImplement restService) {
        this.restService = restService;
    }

    private static final Logger logger = LoggerFactory.getLogger(RestAPIController.class);

    @GetMapping("main.do")
    public String test(HttpServletRequest request) throws Exception {
        logger.info("UTL TEST : '{}'", request.getRequestURL());
        /*
         컨트롤러로 들어오는 매핑된 URI LOG > Uniform Resource Identifier/통합 자원 식별자
         URI는 식별자고, URL은 위치를 가르킨다.
        */
        logger.info("UTI TEST : '{}'", request.getRequestURI());
        // 해당 클래스 경로 출력
        logger.info("JAVA CLASS PATH : '" + this.getClass().getName()+"'");

        return "root url call";
    }

    @GetMapping("json.do")
    public Map<String, String> jsonTest() throws Exception {
        logger.info("JSON API ACCESS by Jackson");
        Map<String, String> map = new HashMap<>();
        map.put("api", "hello restAPI");
        return map;
    }

    @GetMapping("logic.do")
    public Map<String, String> logicTest() throws Exception {
        logger.info("logic 분리된 JSON TEST");
        Map<String, String> logicJsonMap = restService.apiService();
        return logicJsonMap;
    }

}
