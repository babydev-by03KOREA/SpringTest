package com.spring.mvc;

import com.spring.mvc.dto.MemberDTO;
import com.spring.mvc.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.inject.Inject;

@Controller
@RequestMapping("/member/*")
public class MemberController {

    private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

    @Inject
    MemberService service;

    @Autowired
    BCryptPasswordEncoder passwordEncoder;

    @RequestMapping(value = "signup.do", method = RequestMethod.GET)
    public String getSignup() throws Exception {
        logger.info("signup.do page APPROACH");

        return "User/signup";
    }

    @RequestMapping(value = "signup.do", method = RequestMethod.POST)
    public String postSignup(MemberDTO dto) throws Exception {
        logger.info("signup.do POST MAPPING DATA PROCESSING");

        String inputPass = dto.getUserPass();
        String pass = passwordEncoder.encode(inputPass);
        dto.setUserPass(pass);

        service.signup(dto);

        return "redirect:/index.do";
    }

    @RequestMapping("admin.do")
    public String admin(Model model) {
        logger.info("ADMIN USER APPROACH");

        return "Security/admin";
    }

    @RequestMapping("loginError.do")
    public String loginError(Model model) throws Exception {
        logger.info("SPRING SECURITY ACCESS WAS DENIED!");
        model.addAttribute("Error","YOU'RE LOGIN ACCESS WAS DENIED \n PLEASE CHECK YOUR ID OR PASSWORD");
        return "Security/loginError";
    }

}
