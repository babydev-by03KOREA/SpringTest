package com.spring.mvc.info;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.util.Calendar;

@Controller
@RequestMapping("/Info/*")
public class dayBydayMVC {
    @RequestMapping("dayMVC.do")
    public String main(int year, int month, int day, Model model) throws IOException {

        // jsp에서 사용했던 request.getParameter(); 대신 사용!
//        ModelAndView mv = new ModelAndView();
//        mv.setViewName("dayError");

        // 1. 유효성 검사
//        if(!isValid(year, month, day))
//            return "dayError";

        // 2. 작업
        char yoil = getYoil(year, month, day);

        // 3. 출력 / jsp 대신
        /*
        System.out.println(year + "년 " + month + "월 " + day + "일은 ");
        System.out.println(yoil + "요일입니다.");
        response.setContentType("text/html");    // 응답의 형식을 html로 지정
        response.setCharacterEncoding("utf-8");  // 응답의 인코딩을 utf-8로 지정
        PrintWriter out = response.getWriter();  // 브라우저로의 출력 스트림(out)을 얻는다.
        out.println("<html>");
        out.println("<head>");
        out.println("</head>");
        out.println("<body>");
        out.println(year + "년 " + month + "월 " + day + "일은 ");
        out.println(yoil + "요일입니다.");
        out.println("</body>");
        out.println("</html>");
        out.close();
        */

        // 계산한 결과를 model에 저장
        model.addAttribute("year", year);
        model.addAttribute("month", month);
        model.addAttribute("day", day);
        model.addAttribute("yoil", yoil);

        // 작업 결과를 보여줄 뷰의 이름을 지정
//        mv.setViewName("day");

        // ModelAndView 반환
        return "GukBe/day";
    }

    private boolean isValid(int year, int month, int day) {
        return false;
    }

    private char getYoil(int year, int month, int day) {
        // 2. 처리
        Calendar cal = Calendar.getInstance();
        cal.set(year, month - 1, day);

        int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
        return " 일월화수목금토".charAt(dayOfWeek);
    }
}
