package com.kosmo.nbbang.service.impl;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PartyMemberDAO {
	
	@Autowired
	private SqlSessionFactory sqlMapper;

	@Autowired
	private SqlSessionTemplate template;
	
	public int insert(Map map) {
		SqlSession session = sqlMapper.openSession();
		int affected = session.insert("partyMemberInsert", map);
		session.commit();
		session.close();
		return affected;
	}
}
