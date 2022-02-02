package com.kosmo.nbbang.partybbs.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.kosmo.nbbang.partykang.service.PartyChatDTO;

public interface PartyBbsService {
	
	// 목록
	PartyBbsListPagingData<PartyBbsDTO> selectList(Map map, HttpServletRequest req, int nowPage);
	
	// 넷플릭스 목록
	PartyBbsListPagingData<PartyBbsDTO> netflixList(Map map, HttpServletRequest req, int nowPage);
	
	// 왓챠 목록
	PartyBbsListPagingData<PartyBbsDTO> watchaList(Map map, HttpServletRequest req, int nowPage);
	
	// 디즈니 목록
	PartyBbsListPagingData<PartyBbsDTO> disneyList(Map map, HttpServletRequest req, int nowPage);
	
	// 라프텔 목록
	PartyBbsListPagingData<PartyBbsDTO> laftelList(Map map, HttpServletRequest req, int nowPage);
	
	// 티빙 목록
	PartyBbsListPagingData<PartyBbsDTO> tvingList(Map map, HttpServletRequest req, int nowPage);
	
	// 웨이브 목록
	PartyBbsListPagingData<PartyBbsDTO> wavveList(Map map, HttpServletRequest req, int nowPage);
	
	// 전체 레코드 수
	int getTotalRecord(Map map);
	
	// 입력
	int insert(Map map);
	
	// 삭제
	int delete(Map map);
	
	//파티게시판 신고용
	public PartyBbsDTO partySelectOne(Map map);
	
	// 파티 활성화 상태 조회
	public String getActivation(Map map);

	// 파티 활성화 변경(마감처리)
	public int setActivation(Map map);

	// 현재 파티 인원 조회
	public String nowPartyMember(String partyNo);
	
	// 신고 게시글 현재 파티 인원 조회
	public String nowPartyMemberReport(Map map);
	
	// 내용 엔터 처리용
	public String getPartyContent(String partyNo);
	
	// 채팅 유무 확인
	public String chatCheck(Map map);
	
	public int categoryCheck(Map map);

} // end PartyBbsService 