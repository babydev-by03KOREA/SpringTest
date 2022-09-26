package com.spring.mvc.info;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@Controller
@RequestMapping("/Info/*")
public class Dice {

    private static final Logger logger = LoggerFactory.getLogger(Dice.class);

    @RequestMapping("dice.do")
    public void main(HttpServletResponse response) throws IOException {

        int idx1 = (int)(Math.random() * 6) + 1;
        int idx2 = (int)(Math.random() * 6) + 1;

        logger.info(idx1 + " 주사위가 첫번째 이미지로 선택되었습니다.");
        logger.info(idx2 + " 주사위가 두번째 이미지로 선택되었습니다.");

        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("</head>");
        out.println("<body>");
        out.println("<img src='../resources/img/dice"+ idx1 +".jpg' alt='주사위1'>");
        out.println("<img src='../resources/img/dice"+ idx2 +".jpg' alt='주사위2'>");
        out.println("</body>");
        out.println("</html>");
    }
}
