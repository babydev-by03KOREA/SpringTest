package com.spring.mvc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/")
public class AdminController {
    private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

    @GetMapping("index.do")
    public String adminIndex() throws Exception {
        logger.info("ADMIN INDEX APPROACH");
        return "Admin/index";
    }
}
