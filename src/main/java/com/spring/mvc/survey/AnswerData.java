package com.spring.mvc.survey;

import java.util.List;

public class AnswerData {

    private List<String> responses;
    private SurveyDTO dto;

    public List<String> getResponses() {
        return responses;
    }

    public void setResponses(List<String> responses) {
        this.responses = responses;
    }

    public SurveyDTO getDto() {
        return dto;
    }

    public void setDto(SurveyDTO dto) {
        this.dto = dto;
    }

}
