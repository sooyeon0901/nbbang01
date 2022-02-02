package com.kosmo.nbbang.myreport.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.hwang.service.UssrDTO;
import com.kosmo.nbbang.myreport.service.MyReportDTO;

@Repository
public class MyReportDAO {
	
	@Resource(name="sqlSessionFactory")
	private SqlSessionFactory sqlMapper;
	
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	//원차트 가져오기
	public List<MyReportDTO> getMyReport(Map map) {
		SqlSession session= sqlMapper.openSession();
		List<MyReportDTO> lists=session.selectList("selectMyReport", map);
		session.close();
		return lists;
	}
	//막대차트 가져오기
	public List<MyReportDTO> getMyReport2(Map map) {
		SqlSession session= sqlMapper.openSession();
		List<MyReportDTO> lists=session.selectList("selectMyReport2", map);
		session.close();
		return lists;
	}
	
	//Years
	public MyReportDTO getYearSum(Map map) {
		return template.selectOne("selectYearSum",map);
	}
	//Months
	public MyReportDTO getMonthSum(Map map) {
		return template.selectOne("selectMonthSum",map);
	}
	//Week
	public MyReportDTO getWeekSum(Map map) {
		return template.selectOne("selectWeekSum",map);
	}
	
}
