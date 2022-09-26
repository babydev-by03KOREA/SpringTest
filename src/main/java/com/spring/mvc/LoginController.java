package com.spring.mvc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Security/*")
public class LoginController {

    private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

    @RequestMapping("admin.do")
    public String admin(Model model) {
        logger.info("ADMIN USER APPROACH");

        return "Security/admin";
    }

    @RequestMapping("vip.do")
    public String vip(Model model) {
        logger.info("VIP USER APPROACH");

        return "Security/admin";
    }

    @RequestMapping("loginForm.do")
    public String login(Model model) {
        logger.info("LOGIN APPROACH");

        return "User/login";
    }

    @RequestMapping("loginError.do")
    public String loginError(Model model) throws Exception {
        logger.info("SPRING SECURITY ACCESS WAS DENIED!");
        model.addAttribute("Error","YOU'RE LOGIN ACCESS WAS DENIED \n PLEASE CHECK YOUR ID OR PASSWORD");
        return "Security/loginError";
    }

}
