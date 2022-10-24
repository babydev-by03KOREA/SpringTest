package com.spring.mvc.dao;

import com.spring.mvc.survey.SurveyDTO;

public interface ISurveyDAO {
    // SURVEY VALUE DAO
    public void surveyResult(SurveyDTO dto) throws Exception;
}
