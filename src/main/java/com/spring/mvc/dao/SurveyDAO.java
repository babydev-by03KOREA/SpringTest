package com.spring.mvc.dao;

import com.spring.mvc.survey.SurveyDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;

@Repository
public class SurveyDAO implements ISurveyDAO {

    @Inject
    private SqlSession session;

    private static String namespace = "";

    @Override
    public void surveyResult(SurveyDTO sdto) throws Exception {
//        session.select(namespace + ".survey", sdto);
    }
}
