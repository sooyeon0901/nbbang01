package com.kosmo.nbbang.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.kosmo.nbbang.hwang.service.ListPagingData;
import com.kosmo.nbbang.service.InquiryBbsDTO;
import com.kosmo.nbbang.service.PagingUtil;
import com.kosmo.nbbang.service.ReportDTO;
import com.kosmo.nbbang.service.ReportService;

@Service("reportService")
public class ReportServiceImpl implements ReportService {
	
	@Resource(name = "reportDAO")
	private ReportDAO dao;
	
	//리소스파일(onememo.properties)에서 읽어오기
	@Value("${APAGE_SIZE}")
	private int pageSize;
	@Value("${ABLOCK_PAGE}")
	private int blockPage;

	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}
	@Override
	public int insertParty(Map map) {
		return dao.insertParty(map);
	}
	@Override
	public int insert404(Map map) {
		return dao.insert404(map);
	}
	@Override
	public int insertUssr(Map map) {
		return dao.insertUssr(map);
	}

	@Override
	public ListPagingData<ReportDTO> selectList(Map map, HttpServletRequest req, int nowPage) {
		// 파라미터 받기
		// 페이징을 위한 로직 시작]
		// 전체 레코드수(map을 전달해야 페이징됨)
		int totalRecordCount = dao.getTotalRowCount(map);
		// 전체 페이지수
		int totalPage = (int) Math.ceil((double) totalRecordCount / pageSize);
		// 시작 및 끝 ROWNUM구하기
		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		// 페이징을 위한 로직 끝]

		// 키값으로 얻기위함
		map.put("start", start);
		map.put("end", end);

		// 글 전체 목록 얻기
		List lists = dao.selectList(map);
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,
				req.getContextPath() + "/adminReport.do?");

		System.out.println("pagingString" + pagingString);

		// Lombok라이브러리 미 사용시
		ListPagingData<ReportDTO> listPagingData = new ListPagingData<>();
		listPagingData.setBlockPage(blockPage);
		listPagingData.setLists(lists);
		listPagingData.setNowPage(nowPage);
		listPagingData.setPageSize(pageSize);
		listPagingData.setPagingString(pagingString);
		listPagingData.setTotalRecordCount(totalRecordCount);
		return listPagingData;

		// Lombok사용시
		// return
		// ListPagingData.builder().lists(lists).nowPage(nowPage).pageSize(pageSize).pagingString(pagingString).totalRecordCount(totalRecordCount).build();
	}
	
	@Override
	public int getTotalRecord(Map map) {
		return 0;
	}
	

	
	

}
