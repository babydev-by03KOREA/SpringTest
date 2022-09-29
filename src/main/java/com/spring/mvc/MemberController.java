package com.spring.mvc;

import com.spring.mvc.dto.MemberDTO;
import com.spring.mvc.service.MemberService;
import org.apache.ibatis.javassist.bytecode.DuplicateMemberException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.inject.Inject;

@Controller
@RequestMapping("/member/*")
public class MemberController {

    private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

    @Inject
    MemberService service;

    @Autowired
    BCryptPasswordEncoder passwordEncoder;

    @RequestMapping("agreement.do")
    public String agreement() throws Exception {
        logger.info("AGREEMENT GET REQUEST APPROACH");

        return "User/agreement";
    }

    @RequestMapping(value = "signup.do", method = RequestMethod.GET)
    public String getSignup() throws Exception {
        logger.info("signup.do page APPROACH");

        return "redirect:/member/agreement.do";
    }

    @RequestMapping(value = "signup.do", method = RequestMethod.POST)
    public String postSignup(MemberDTO dto, @RequestParam(value = "agree", defaultValue = "false") Boolean agree) throws Exception {
        logger.info("signup.do POST MAPPING DATA PROCESSING Val: " + agree);

        if (!agree) {
            return "User/agreement";
        }

        return "User/signup";
    }

    @PostMapping("signupCheck.do")
    public String postSignup(MemberDTO dto, Model model) throws Exception {

        try {
            String inputPass = dto.getUserPass();
            String pass = passwordEncoder.encode(inputPass);

            logger.info(dto.getUserName());
            model.addAttribute("userName", dto.getUserName());

            dto.setUserPass(pass);
            service.signup(dto);

            return "User/signupCheck";
        } catch (DuplicateMemberException ex) {
            return "User/signup";
        }
    }

    @RequestMapping("admin.do")
    public String admin(Model model) {
        logger.info("ADMIN USER APPROACH");

        return "Security/admin";
    }

    @RequestMapping("loginError.do")
    public String loginError(Model model) throws Exception {
        logger.info("SPRING SECURITY ACCESS WAS DENIED!");
        model.addAttribute("Error", "YOU'RE LOGIN ACCESS WAS DENIED \n PLEASE CHECK YOUR ID OR PASSWORD");
        return "Security/loginError";
    }

}
