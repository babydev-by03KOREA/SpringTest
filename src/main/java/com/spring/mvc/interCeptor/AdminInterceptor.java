package com.spring.mvc.interCeptor;

import com.spring.mvc.dto.MemberDTO;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminInterceptor extends HandlerInterceptorAdapter {

    public boolean perHandle(HttpServletRequest request, HttpServletResponse response, Object object) throws Exception {
        HttpSession session = request.getSession();
        MemberDTO member = (MemberDTO)session.getAttribute("member");

        if (member == null) {
            response.sendRedirect("/member/login.do");
            return false;
        }

        if (member.getVerify() != 9) {
            response.sendRedirect("/index.do");
            return false;
        }

        return true;
    }
}
