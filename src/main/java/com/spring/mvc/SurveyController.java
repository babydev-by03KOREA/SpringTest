package com.spring.mvc;

import com.spring.mvc.survey.AnswerData;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Survey/*")
public class SurveyController {

    private static final Logger logger = LoggerFactory.getLogger(SurveyController.class);

    @GetMapping("survey.do")
    public String form() {
        return "Survey/surveyForm";
    }

    @PostMapping("surveyValue.do")
    public String submit(@ModelAttribute("ansData") AnswerData data) {
        return "Survey/submitted";
    }
}
