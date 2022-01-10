package com.kosmo.nbbang.partybbs.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface PartyBbsService {
	
	// 목록
	ListPagingData<PartyBbsDTO> selectList(Map map, HttpServletRequest req, int nowPage);
	
	// 전체 레코드 수
	int getTotalRecord(Map map);
	
	// 입력
	int insert(Map map);
	
	// 수정
	int update(Map map);
	
	// 삭제
	int delete(Map map);
	
} // end PartyBbsService