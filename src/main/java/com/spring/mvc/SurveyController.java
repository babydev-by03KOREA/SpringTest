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

    /*
    * @RequestParam("ansData"); > url?ansData=12
    * @ModelAttribute("ansData") AnswerData data > Obj Mapping
    * @ModelAttribute 장점 > @RequestParam 무수히 많은걸 하나로 줄이기 가능
    * 통째로 넘겨준다 생각하기!
    * */
    @PostMapping("surveyValue.do")
    public String submit(@ModelAttribute("ansData") AnswerData data) {
        logger.info("data.getRESPONSE()" + data.getResponses());
        logger.info("data.getDTO()" + data.getDto());
        return "Survey/submitted";
    }
}
