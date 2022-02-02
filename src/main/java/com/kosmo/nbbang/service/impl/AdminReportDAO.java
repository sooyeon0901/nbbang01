package com.kosmo.nbbang.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.service.AdminReportDTO;


@Repository
public class AdminReportDAO {
	
	@Resource(name="sqlSessionFactory")
	private SqlSessionFactory sqlMapper;
	
	@Resource(name="template")
	private SqlSessionTemplate template;

	//회원수
	public AdminReportDTO getMembercount(Map map) {
		return template.selectOne("selectMemberCount",map);
	}
	//매칭성사수
	public AdminReportDTO getMatchcount(Map map) {
		return template.selectOne("selectMatchCount",map);
	}
	//문의수
	public AdminReportDTO getInqcount(Map map) {
		return template.selectOne("selectInqCount",map);
	}
	//신고수
	public AdminReportDTO getReportcount(Map map) {
		return template.selectOne("selectReportCount",map);
	}
	//시간대별(월별) ussrbbs게시글 수 추이
	public List<AdminReportDTO> getUssrCount(Map map) {
		SqlSession session= sqlMapper.openSession();
		List<AdminReportDTO> lists=session.selectList("selectUssrCount", map);
		session.close();
		return lists;
	}
	//가입자 경로(원그래프)
	public List<AdminReportDTO> getUserType(Map map) {
		SqlSession session= sqlMapper.openSession();
		List<AdminReportDTO> lists=session.selectList("selectUserType", map);
		session.close();
		return lists;
	}
	//시간대별(월별) partybbs게시글 수 추이
	public List<AdminReportDTO> getPartyCount(Map map) {
		SqlSession session= sqlMapper.openSession();
		List<AdminReportDTO> lists=session.selectList("selectPartyCount", map);
		session.close();
		return lists;
	}
	//회원성별
	public List<AdminReportDTO> getGenderCount(Map map) {
		SqlSession session= sqlMapper.openSession();
		List<AdminReportDTO> lists=session.selectList("selectGenderCount", map);
		session.close();
		return lists;
	}
}
