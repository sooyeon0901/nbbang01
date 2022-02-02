package com.kosmo.nbbang.partybbs.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.partybbs.service.PartyBbsDTO;
import com.kosmo.nbbang.partykang.service.PartyChatDTO;

@Repository
public class PartyBbsDAO {

	@Autowired
	private SqlSessionFactory sqlMapper;

	@Autowired
	private SqlSessionTemplate template;

	public List<PartyBbsDTO> selectList(Map map) {
		SqlSession session = sqlMapper.openSession();
		List<PartyBbsDTO> lists = session.selectList("partyBbsSelectList", map);
		session.close();
		return lists;
	}

	// 넷플릭스 리스트
	public List<PartyBbsDTO> netflixList(Map map) {
		SqlSession session = sqlMapper.openSession();
		List<PartyBbsDTO> lists = session.selectList("netflixList", map);
		session.close();
		return lists;
	}
	
	// 왓챠 리스트
	public List<PartyBbsDTO> watchaList(Map map) {
		SqlSession session = sqlMapper.openSession();
		List<PartyBbsDTO> lists = session.selectList("watchaList", map);
		session.close();
		return lists;
	}
	
	// 디즈니 리스트
	public List<PartyBbsDTO> disneyList(Map map) {
		SqlSession session = sqlMapper.openSession();
		List<PartyBbsDTO> lists = session.selectList("disneyList", map);
		session.close();
		return lists;
	}
	
	// 라프텔 리스트
	public List<PartyBbsDTO> laftelList(Map map) {
		SqlSession session = sqlMapper.openSession();
		List<PartyBbsDTO> lists = session.selectList("laftelList", map);
		session.close();
		return lists;
	}
	
	// 티빙 리스트
	public List<PartyBbsDTO> tvingList(Map map) {
		SqlSession session = sqlMapper.openSession();
		List<PartyBbsDTO> lists = session.selectList("tvingList", map);
		session.close();
		return lists;
	}
	
	// 웨이브 리스트
	public List<PartyBbsDTO> wavveList(Map map) {
		SqlSession session = sqlMapper.openSession();
		List<PartyBbsDTO> lists = session.selectList("wavveList", map);
		session.close();
		return lists;
	}

	public int getTotalRowCount(Map map) {
		SqlSession session = sqlMapper.openSession();
		int total = session.selectOne("partyBbsTotalRowCount", map);
		session.close();
		return total;
	}

	public int insert(Map map) {
		SqlSession session = sqlMapper.openSession();
		int affected = session.insert("partyBbsInsert", map);
		session.commit();
		session.close();
		return affected;
	}

	public int delete(Map map) {
		return template.delete("partyBbsDelete", map);
	}
	
	//파티게시판 신고용
	public PartyBbsDTO partySelectOne(Map map) {
		return template.selectOne("partybbsSelectOne", map);
	}

	public String getActivation(Map map) {
		return template.selectOne("getActivation", map);
	}
	public int setActivation(Map map) {
		return template.update("setActivation", map);
	}

	public List<PartyBbsDTO> getList(String email) {
		return template.selectList("getList", email);
	}

	public String nowPartyMember(String partyNo) {
		return template.selectOne("nowPartyMember", partyNo);
	}

	public String chatCheck(Map map) {
		return template.selectOne("chatCheck", map);
	}

	public String getPartyContent(String partyNo) {
		return template.selectOne("getPartyContent", partyNo);
	}

	public String nowPartyMemberReport(Map map) {
		return template.selectOne("nowPartyMemberReport", map);
	}

	public int categoryCheck(Map map) {
		return template.selectOne("categoryCheck", map);
	}

} // end PartyBbsDAO