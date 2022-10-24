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
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

    @GetMapping("login.do")
    public String getLogin() throws Exception {
        logger.info("LOGIN PAGE APPROACH");
        return "User/login";
    }

    @PostMapping("login.do")
    public String postLogin(MemberDTO dto, RedirectAttributes redirect, HttpServletRequest request) throws Exception {
        logger.info("POST LOGIN APPROACH > LOGIN PROGRESSING...");

        MemberDTO login = service.signin(dto);
        HttpSession session = request.getSession();

        /* User Input Value == User DB Value Match Check T or F */
        boolean isPasswordMatch = passwordEncoder.matches(dto.getUserPass(), login.getUserPass());

        if (login != null && isPasswordMatch) {
            session.setAttribute("member", login);
        } else {
            session.setAttribute("member", null);
            redirect.addAttribute("msg", false);
            return "redirect:/member/login.do";
        }

        return "redirect:/index.do";
    }

    @GetMapping("logout.do")
    public String signOut(HttpSession session) throws Exception {
        logger.info("USER LOGOUT BYEBYE");
        service.logout(session);
        return "redirect:/index.do";
    }

    @RequestMapping("loginError.do")
    public String loginError(Model model) throws Exception {
        logger.info("SPRING SECURITY ACCESS WAS DENIED!");
        model.addAttribute("Error", "YOU'RE LOGIN ACCESS WAS DENIED \n PLEASE CHECK YOUR ID OR PASSWORD");
        return "Security/loginError";
    }

}
