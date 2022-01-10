package com.kosmo.nbbang.partybbs.service.impl;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PartyBbsDAO {

	@Autowired
	private SqlSessionFactory sqlMapper;

	@Autowired
	private SqlSessionTemplate template;

	public int insert(Map map) {
		SqlSession session = sqlMapper.openSession();
		int affected = session.insert("partyBbsInsert", map);
		session.commit();
		session.close();
		return affected;
	}

} // end PartyBbsDAO