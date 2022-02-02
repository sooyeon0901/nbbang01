package com.kosmo.nbbang.partybbs.service.impl;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.kosmo.nbbang.partybbs.service.PartyBbsListPagingData;
import com.kosmo.nbbang.partybbs.service.PartyBbsDTO;
import com.kosmo.nbbang.partybbs.service.PartyBbsService;
import com.kosmo.nbbang.partykang.service.PartyChatDTO;
import com.kosmo.nbbang.service.PagingUtil;

@Service
public class PartyBbsServiceImpl implements PartyBbsService {

	@Autowired
	private PartyBbsDAO dao;

	@Value("${PAGE_SIZE}")
	private int pageSize;

	@Value("${BLOCK_PAGE}")
	private int blockPage;

	@Override
	public PartyBbsListPagingData<PartyBbsDTO> selectList(Map map, HttpServletRequest req, int nowPage) {
		// 전체 레코드수
		int totalRecordCount = dao.getTotalRowCount(map);
		// 전체 페이지수
		int totalPage = (int) Math.ceil((double) totalRecordCount / pageSize);
		// 시작 및 끝 ROWNUM구하기
		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		// 페이징을 위한 로직 끝]
		map.put("start", start);
		map.put("end", end);
		// 글 전체 목록 얻기
		List lists = dao.selectList(map);
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,
				req.getContextPath() + "/party/PartyBbs.tiles?");

		PartyBbsListPagingData<PartyBbsDTO> listPagingData = new PartyBbsListPagingData<>();
		return PartyBbsListPagingData.builder().lists(lists).nowPage(nowPage).pageSize(pageSize)
				.pagingString(pagingString).totalRecordCount(totalRecordCount).build();
	}

	// 넷플릭스 리스트
	@Override
	public PartyBbsListPagingData<PartyBbsDTO> netflixList(Map map, HttpServletRequest req, int nowPage) {
		// 전체 레코드수
		int totalRecordCount = dao.getTotalRowCount(map);
		// 전체 페이지수
		int totalPage = (int) Math.ceil((double) totalRecordCount / pageSize);
		// 시작 및 끝 ROWNUM구하기
		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		// 페이징을 위한 로직 끝]
		map.put("start", start);
		map.put("end", end);
		// 글 전체 목록 얻기
		List lists = dao.netflixList(map);
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,
				req.getContextPath() + "/party/PartyBbs.tiles?");

		PartyBbsListPagingData<PartyBbsDTO> listPagingData = new PartyBbsListPagingData<>();
		return PartyBbsListPagingData.builder().lists(lists).nowPage(nowPage).pageSize(pageSize)
				.pagingString(pagingString).totalRecordCount(totalRecordCount).build();
	}

	// 왓챠 리스트
	@Override
	public PartyBbsListPagingData<PartyBbsDTO> watchaList(Map map, HttpServletRequest req, int nowPage) {
		// 전체 레코드수
		int totalRecordCount = dao.getTotalRowCount(map);
		// 전체 페이지수
		int totalPage = (int) Math.ceil((double) totalRecordCount / pageSize);
		// 시작 및 끝 ROWNUM구하기
		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		// 페이징을 위한 로직 끝]
		map.put("start", start);
		map.put("end", end);
		// 글 전체 목록 얻기
		List lists = dao.watchaList(map);
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,
				req.getContextPath() + "/party/PartyBbs.tiles?");

		PartyBbsListPagingData<PartyBbsDTO> listPagingData = new PartyBbsListPagingData<>();
		return PartyBbsListPagingData.builder().lists(lists).nowPage(nowPage).pageSize(pageSize)
				.pagingString(pagingString).totalRecordCount(totalRecordCount).build();
	}

	// 디즈니 리스트
	@Override
	public PartyBbsListPagingData<PartyBbsDTO> disneyList(Map map, HttpServletRequest req, int nowPage) {
		// 전체 레코드수
		int totalRecordCount = dao.getTotalRowCount(map);
		// 전체 페이지수
		int totalPage = (int) Math.ceil((double) totalRecordCount / pageSize);
		// 시작 및 끝 ROWNUM구하기
		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		// 페이징을 위한 로직 끝]
		map.put("start", start);
		map.put("end", end);
		// 글 전체 목록 얻기
		List lists = dao.disneyList(map);
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,
				req.getContextPath() + "/party/PartyBbs.tiles?");

		PartyBbsListPagingData<PartyBbsDTO> listPagingData = new PartyBbsListPagingData<>();
		return PartyBbsListPagingData.builder().lists(lists).nowPage(nowPage).pageSize(pageSize)
				.pagingString(pagingString).totalRecordCount(totalRecordCount).build();
	}

	// 라프텔 리스트
	@Override
	public PartyBbsListPagingData<PartyBbsDTO> laftelList(Map map, HttpServletRequest req, int nowPage) {
		// 전체 레코드수
		int totalRecordCount = dao.getTotalRowCount(map);
		// 전체 페이지수
		int totalPage = (int) Math.ceil((double) totalRecordCount / pageSize);
		// 시작 및 끝 ROWNUM구하기
		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		// 페이징을 위한 로직 끝]
		map.put("start", start);
		map.put("end", end);
		// 글 전체 목록 얻기
		List lists = dao.laftelList(map);
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,
				req.getContextPath() + "/party/PartyBbs.tiles?");

		PartyBbsListPagingData<PartyBbsDTO> listPagingData = new PartyBbsListPagingData<>();
		return PartyBbsListPagingData.builder().lists(lists).nowPage(nowPage).pageSize(pageSize)
				.pagingString(pagingString).totalRecordCount(totalRecordCount).build();
	}


	// 티빙 리스트
	@Override
	public PartyBbsListPagingData<PartyBbsDTO> tvingList(Map map, HttpServletRequest req, int nowPage) {
		// 전체 레코드수
		int totalRecordCount = dao.getTotalRowCount(map);
		// 전체 페이지수
		int totalPage = (int) Math.ceil((double) totalRecordCount / pageSize);
		// 시작 및 끝 ROWNUM구하기
		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		// 페이징을 위한 로직 끝]
		map.put("start", start);
		map.put("end", end);
		// 글 전체 목록 얻기
		List lists = dao.tvingList(map);
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,
				req.getContextPath() + "/party/PartyBbs.tiles?");

		PartyBbsListPagingData<PartyBbsDTO> listPagingData = new PartyBbsListPagingData<>();
		return PartyBbsListPagingData.builder().lists(lists).nowPage(nowPage).pageSize(pageSize)
				.pagingString(pagingString).totalRecordCount(totalRecordCount).build();
	}

	// 웨이브 리스트
	@Override
	public PartyBbsListPagingData<PartyBbsDTO> wavveList(Map map, HttpServletRequest req, int nowPage) {
		// 전체 레코드수
		int totalRecordCount = dao.getTotalRowCount(map);
		// 전체 페이지수
		int totalPage = (int) Math.ceil((double) totalRecordCount / pageSize);
		// 시작 및 끝 ROWNUM구하기
		int start = (nowPage - 1) * pageSize + 1;
		int end = nowPage * pageSize;
		// 페이징을 위한 로직 끝]
		map.put("start", start);
		map.put("end", end);
		// 글 전체 목록 얻기
		List lists = dao.wavveList(map);
		String pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,
				req.getContextPath() + "/party/PartyBbs.tiles?");

		PartyBbsListPagingData<PartyBbsDTO> listPagingData = new PartyBbsListPagingData<>();
		return PartyBbsListPagingData.builder().lists(lists).nowPage(nowPage).pageSize(pageSize)
				.pagingString(pagingString).totalRecordCount(totalRecordCount).build();
	}

	@Override
	public int getTotalRecord(Map map) {
		return 0;
	}

	@Override
	public int insert(Map map) {
		int affected = 0;
		try {
			affected = dao.insert(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return affected;
	}

	// 게시글 삭제
	public int delete(Map map) {
		return dao.delete(map);
	}
	
	//파티게시판 신고용
	public PartyBbsDTO partySelectOne(Map map) {
		return dao.partySelectOne(map);
	}

	// 게시글 활성화 확인
	public String getActivation(Map map) {
		return dao.getActivation(map);
	}

	// 마감하기
	public int setActivation(Map map) {
		return dao.setActivation(map);
	}
	
	// 현재 참여중인 파티 리스트
	public List<PartyBbsDTO> getList(String email) {
		return dao.getList(email);
	}

	// 현재 파티 참여중인 인원수
	public String nowPartyMember(String partyNo) {
		return dao.nowPartyMember(partyNo);
	}

	// 해당 게시글 채팅에 참여중인지 확인
	public String chatCheck(Map map) {
		return dao.chatCheck(map);
	}
	// 게시글 내용 엔터 처리
	public String getPartyContent(String partyNo) {
		return dao.getPartyContent(partyNo);
	}

	// 신고 상제 현재 인원 표시
	public String nowPartyMemberReport(Map map) {
		return dao.nowPartyMemberReport(map);
	}

	public int categoryCheck(Map map) {
		return dao.categoryCheck(map);
	}

} // end PartyBbsServiceImpl