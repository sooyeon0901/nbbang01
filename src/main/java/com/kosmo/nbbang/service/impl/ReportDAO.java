package com.kosmo.nbbang.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.service.InquiryBbsDTO;

@Repository
public class ReportDAO {
	
	@Autowired
	private SqlSessionFactory sqlMapper;
	@Autowired
	private SqlSessionTemplate template;
	
	public int insert(Map map) {	
		return template.insert("reportInsert", map);
	}//insert
	
	public int insertParty(Map map) {
		return template.insert("reportInsertParty", map);
	}

	public int insert404(Map map) {
		return template.insert("reportInsert404", map);
	}
	public int insertUssr(Map map) {
		return template.insert("reportInsertUssr", map);
	}

	public int getTotalRowCount(Map map) {
		SqlSession session = sqlMapper.openSession();
		int total = session.selectOne("reportTotalRowCount",map);
		session.close();
		
		return total;
	}

	public List selectList(Map map) {
		SqlSession session= sqlMapper.openSession();
		List<InquiryBbsDTO> lists = session.selectList("reportSelectList", map);
		session.close();
		
		return lists;
	}
	

	

}
