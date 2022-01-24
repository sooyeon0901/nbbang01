package com.kosmo.nbbang.hwang.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.hwang.service.UssrDTO;

@Repository
public class UssrDAO {
	@Resource(name="sqlSessionFactory")
	private SqlSessionFactory sqlMapper;
	
	@Resource(name="template")
	private SqlSessionTemplate template;
		
	public boolean isLogin(Map map) {
		SqlSession session= sqlMapper.openSession();
		int count=session.selectOne("ussrIsLogin",map);
		session.close();
		return count==1 ? true : false;
	}

	public List<UssrDTO> recommandList(Map map) {
		SqlSession session= sqlMapper.openSession();
		List<UssrDTO> lists=session.selectList("ussrRecommandSelectList", map);
		session.close();
		return lists;
	}
	public List<UssrDTO> recommandLikeSortList(Map map) {
		SqlSession session= sqlMapper.openSession();
		List<UssrDTO> lists=session.selectList("recommandLikeSortList", map);
		session.close();
		return lists;
	}
	public List<UssrDTO> recommandServiceList(Map map) {
		SqlSession session= sqlMapper.openSession();
		List<UssrDTO> lists=session.selectList("recommandServiceList", map);
		session.close();
		return lists;
	}

	public List recommandTipsList(Map map) {
		SqlSession session= sqlMapper.openSession();
		List<UssrDTO> lists=session.selectList("recommandTipsList", map);
		session.close();
		return lists;
	}

	public List recommandContentsList(Map map) {
		SqlSession session= sqlMapper.openSession();
		List<UssrDTO> lists=session.selectList("recommandContentsList", map);
		session.close();
		return lists;
	}

	public List<UssrDTO> freeList(Map map) {
		SqlSession session= sqlMapper.openSession();
		List<UssrDTO> lists=session.selectList("ussrFreeSelectList", map);
		session.close();
		return lists;
	}

	public List freeLikeSortList(Map map) {
		SqlSession session= sqlMapper.openSession();
		List<UssrDTO> lists=session.selectList("freeLikeSortList", map);
		session.close();
		return lists;
	}

	public List freeNormalList(Map map) {
		SqlSession session= sqlMapper.openSession();
		List<UssrDTO> lists=session.selectList("freeNormalList", map);
		session.close();
		return lists;
	}

	public List freeReviewList(Map map) {
		SqlSession session= sqlMapper.openSession();
		List<UssrDTO> lists=session.selectList("freeReviewList", map);
		session.close();
		return lists;
	}

	public List freeInfoList(Map map) {
		SqlSession session= sqlMapper.openSession();
		List<UssrDTO> lists=session.selectList("freeInfoList", map);
		session.close();
		return lists;
	}

	public int getTotalRowCount(Map map) {
		SqlSession session= sqlMapper.openSession();
		int total=session.selectOne("ussrTotalRowCount",map);
		session.close();
		return total;
	}

	public int getFreeTotalRowCount(Map map) {
		return template.selectOne("freeTotalRowCount", map);
	}

	public int insert(Map map) {
		SqlSession session= sqlMapper.openSession();
		int affected=session.insert("ussrInsert", map);
		session.commit();
		session.close();
		return affected;
	}
	
	public UssrDTO selectOne(Map map) {
		return template.selectOne("ussrSelectOne",map);
	}

	public int update(Map map) {
		return template.update("ussrUpdate", map);
	}
	
	public int delete(Map map) {
		return template.delete("ussrDelete", map);
	}
	
	public int likeInsert(Map map) {
		SqlSession session= sqlMapper.openSession();
		int affected=session.insert("likeInsert", map);
		session.commit();
		session.close();
		return affected;
	}
	
	public int likeCount(Map map) {
		return template.selectOne("likeCount", map);
	}

	
}
