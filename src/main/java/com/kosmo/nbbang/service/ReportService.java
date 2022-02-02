package com.kosmo.nbbang.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.kosmo.nbbang.hwang.service.ListPagingData;

public interface ReportService {

	int insert(Map map);
	int insertParty(Map map);
	int insert404(Map map);
	int insertUssr(Map map);
	
	//전체 목록용
	ListPagingData<ReportDTO> selectList(Map map, HttpServletRequest req, int nowPage);
	
	//전체 레코드 수
	int getTotalRecord(Map map);
	

	

}
