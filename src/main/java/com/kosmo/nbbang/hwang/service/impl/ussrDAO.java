package com.kosmo.nbbang.hwang.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.hwang.service.ussrDTO;

@Repository
public class ussrDAO {
	@Resource(name = "sqlSessionFactory")
	private SqlSessionFactory sqlMapper;
	
	@Resource(name="template")
	private SqlSessionTemplate template;
		
	public boolean isLogin(Map map) {
		SqlSession session= sqlMapper.openSession();
		int count=session.selectOne("ussrIsLogin",map);
		session.close();
		return count==1 ? true : false;
	}
	
	public List<ussrDTO> selectList(Map map) {
		SqlSession session= sqlMapper.openSession();
		List<ussrDTO> lists=session.selectList("ussrSelectList", map);
		session.close();
		return lists;
	}
	public int getTotalRowCount(Map map) {
		SqlSession session= sqlMapper.openSession();
		int total=session.selectOne("ussrTotalRowCount",map);
		session.close();
		return total;
	}
	
	public int insert(Map map) {
		SqlSession session= sqlMapper.openSession();
		int affected=session.insert("ussrInsert", map);
		session.commit();
		session.close();
		return affected;
	}
	
	public ussrDTO selectOne(Map map) {		
		return template.selectOne("ussrSelectOne",map);
	}

	public int update(Map map) {
		return template.update("ussrUpdate", map);
	}
	
	public void delete(Map map) {
		template.delete("ussrDelete", map);		
	}
}
