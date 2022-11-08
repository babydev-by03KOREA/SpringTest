package com.spring.mvc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/JSTL/")
public class JSTLController {

    private static final Logger logger = LoggerFactory.getLogger(JSTLController.class);

    @GetMapping("basic.do")
    public String jstlTest(Model model) {
        List<String> nameList = new ArrayList<String>(Arrays.asList("@ppangttuck03", "@ppangttuck1122", "@PPangTTUK_03"));
        model.addAttribute("ArrayList", nameList);

        HashMap<String, Integer> map = new HashMap<String, Integer>();
        map.put("박형주", 2420001);
        map.put("빵떡이", 1234567);
        model.addAttribute("HashMap", map);

        logger.info("JSTL forEach Basic Test");

        return "JSTL";
    }
}
