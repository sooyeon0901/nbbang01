package com.kosmo.nbbang.partybbs;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kosmo.nbbang.partybbs.service.PartyBbsDTO;
import com.kosmo.nbbang.partybbs.service.PartyBbsListPagingData;
import com.kosmo.nbbang.partybbs.service.impl.PartyBbsServiceImpl;
import com.kosmo.nbbang.service.impl.PartyMemberServiceImpl;

@SessionAttributes("email")
@Controller
public class PartyBbsController {

	// 서비스 주입
	@Autowired
	private PartyBbsServiceImpl partyBbsService;

	@Autowired
	private PartyMemberServiceImpl partyMemberService;


	// 파티원 게시판
	@RequestMapping("/partyBbs.do")
	public String partyBbs(@ModelAttribute("email") String email, @ModelAttribute("partyNo") String partyNo,
			@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage,
			HttpServletRequest req, Model model) {

		// 서비스 호출
		PartyBbsListPagingData<PartyBbsDTO> partyBbsListPagingData = partyBbsService.selectList(map, req, nowPage);

		List<PartyBbsDTO> lists = partyBbsListPagingData.getLists();
		List<PartyBbsDTO> temp = new Vector();
		for (PartyBbsDTO dto : lists) {
			map.put("partyNo", dto.getPartyNo());
			map.put("bbswriter", dto.getEmail());
			map.put("participant", email);
			String count = partyBbsService.nowPartyMember(dto.getPartyNo());
			String content = partyBbsService.getPartyContent(dto.getPartyNo());
			String chatExists = partyBbsService.chatCheck(map);
			dto.setChatExists(chatExists);
			dto.setCount(count);
			dto.setPartyContent(content.replace("\r\n","<br/>"));
			temp.add(dto);
		}
		partyBbsListPagingData.setLists(temp);
		// 데이터 저장
		model.addAttribute("partyBbsListPagingData", partyBbsListPagingData);
		
		return "party/PartyBbs.tiles";
	}
	
	// 파티원 게시판-넷플릭스
	@RequestMapping("/netflixList.do")
	public String partyBbsNetflix(@ModelAttribute("email") String email, @RequestParam Map map,
			@RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {

		// 서비스 호출
		PartyBbsListPagingData<PartyBbsDTO> partyBbsListPagingData = partyBbsService.netflixList(map, req, nowPage);
		List<PartyBbsDTO> lists = partyBbsListPagingData.getLists();
		List<PartyBbsDTO> temp = new Vector();
		for (PartyBbsDTO dto : lists) {
			map.put("partyNo", dto.getPartyNo());
			map.put("bbswriter", dto.getEmail());
			map.put("participant", email);
			String count = partyBbsService.nowPartyMember(dto.getPartyNo());
			String content = partyBbsService.getPartyContent(dto.getPartyNo());
			String chatExists = partyBbsService.chatCheck(map);
			dto.setChatExists(chatExists);
			dto.setCount(count);
			dto.setPartyContent(content.replace("\r\n","<br/>"));
			temp.add(dto);
		}
		partyBbsListPagingData.setLists(temp);
		// 데이터 저장
		model.addAttribute("partyBbsListPagingData", partyBbsListPagingData);
		return "party/PartyBbs.tiles";
	}

	// 파티원 게시판-왓챠
	@RequestMapping("/watchaList.do")
	public String partyBbsWatcha(@ModelAttribute("email") String email, @RequestParam Map map,
			@RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {

		// 서비스 호출
		PartyBbsListPagingData<PartyBbsDTO> partyBbsListPagingData = partyBbsService.watchaList(map, req, nowPage);
		List<PartyBbsDTO> lists = partyBbsListPagingData.getLists();
		List<PartyBbsDTO> temp = new Vector();
		for (PartyBbsDTO dto : lists) {
			map.put("partyNo", dto.getPartyNo());
			map.put("bbswriter", dto.getEmail());
			map.put("participant", email);
			String count = partyBbsService.nowPartyMember(dto.getPartyNo());
			String content = partyBbsService.getPartyContent(dto.getPartyNo());
			String chatExists = partyBbsService.chatCheck(map);
			dto.setChatExists(chatExists);
			dto.setCount(count);
			dto.setPartyContent(content.replace("\r\n","<br/>"));
			temp.add(dto);
		}
		partyBbsListPagingData.setLists(temp);
		// 데이터 저장
		model.addAttribute("partyBbsListPagingData", partyBbsListPagingData);
		return "party/PartyBbs.tiles";
	}

	// 파티원 게시판-디즈니
	@RequestMapping("/disneyList.do")
	public String partyBbsDisney(@ModelAttribute("email") String email, @RequestParam Map map,
			@RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {

		// 서비스 호출
		PartyBbsListPagingData<PartyBbsDTO> partyBbsListPagingData = partyBbsService.disneyList(map, req, nowPage);
		List<PartyBbsDTO> lists = partyBbsListPagingData.getLists();
		List<PartyBbsDTO> temp = new Vector();
		for (PartyBbsDTO dto : lists) {
			map.put("partyNo", dto.getPartyNo());
			map.put("bbswriter", dto.getEmail());
			map.put("participant", email);
			String count = partyBbsService.nowPartyMember(dto.getPartyNo());
			String content = partyBbsService.getPartyContent(dto.getPartyNo());
			String chatExists = partyBbsService.chatCheck(map);
			dto.setChatExists(chatExists);
			dto.setCount(count);
			dto.setPartyContent(content.replace("\r\n","<br/>"));
			temp.add(dto);
		}
		partyBbsListPagingData.setLists(temp);
		// 데이터 저장
		model.addAttribute("partyBbsListPagingData", partyBbsListPagingData);
		return "party/PartyBbs.tiles";
	}

	// 파티원 게시판-라프텔
	@RequestMapping("/laftelList.do")
	public String partyBbsLaftel(@ModelAttribute("email") String email, @RequestParam Map map,
			@RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {

		// 서비스 호출
		PartyBbsListPagingData<PartyBbsDTO> partyBbsListPagingData = partyBbsService.laftelList(map, req, nowPage);
		List<PartyBbsDTO> lists = partyBbsListPagingData.getLists();
		List<PartyBbsDTO> temp = new Vector();
		for (PartyBbsDTO dto : lists) {
			map.put("partyNo", dto.getPartyNo());
			map.put("bbswriter", dto.getEmail());
			map.put("participant", email);
			String count = partyBbsService.nowPartyMember(dto.getPartyNo());
			String content = partyBbsService.getPartyContent(dto.getPartyNo());
			String chatExists = partyBbsService.chatCheck(map);
			dto.setChatExists(chatExists);
			dto.setCount(count);
			dto.setPartyContent(content.replace("\r\n","<br/>"));
			temp.add(dto);
		}
		partyBbsListPagingData.setLists(temp);
		// 데이터 저장
		model.addAttribute("partyBbsListPagingData", partyBbsListPagingData);
		return "party/PartyBbs.tiles";
	}

	// 파티원 게시판-티빙
	@RequestMapping("/tvingList.do")
	public String partyBbsTving(@ModelAttribute("email") String email, @RequestParam Map map,
			@RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {

		// 서비스 호출
		PartyBbsListPagingData<PartyBbsDTO> partyBbsListPagingData = partyBbsService.tvingList(map, req, nowPage);
		List<PartyBbsDTO> lists = partyBbsListPagingData.getLists();
		List<PartyBbsDTO> temp = new Vector();
		for (PartyBbsDTO dto : lists) {
			map.put("partyNo", dto.getPartyNo());
			map.put("bbswriter", dto.getEmail());
			map.put("participant", email);
			String count = partyBbsService.nowPartyMember(dto.getPartyNo());
			String content = partyBbsService.getPartyContent(dto.getPartyNo());
			String chatExists = partyBbsService.chatCheck(map);
			dto.setChatExists(chatExists);
			dto.setCount(count);
			dto.setPartyContent(content.replace("\r\n","<br/>"));
			temp.add(dto);
		}
		partyBbsListPagingData.setLists(temp);
		// 데이터 저장
		model.addAttribute("partyBbsListPagingData", partyBbsListPagingData);
		return "party/PartyBbs.tiles";
	}

	// 파티원 게시판-웨이브
	@RequestMapping("/wavveList.do")
	public String partyBbsWavve(@ModelAttribute("email") String email, @RequestParam Map map,
			@RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req, Model model) {

		// 서비스 호출
		PartyBbsListPagingData<PartyBbsDTO> partyBbsListPagingData = partyBbsService.wavveList(map, req, nowPage);
		List<PartyBbsDTO> lists = partyBbsListPagingData.getLists();
		List<PartyBbsDTO> temp = new Vector();
		for (PartyBbsDTO dto : lists) {
			map.put("partyNo", dto.getPartyNo());
			map.put("bbswriter", dto.getEmail());
			map.put("participant", email);
			String count = partyBbsService.nowPartyMember(dto.getPartyNo());
			String content = partyBbsService.getPartyContent(dto.getPartyNo());
			String chatExists = partyBbsService.chatCheck(map);
			dto.setChatExists(chatExists);
			dto.setCount(count);
			dto.setPartyContent(content.replace("\r\n","<br/>"));
			temp.add(dto);
		}
		partyBbsListPagingData.setLists(temp);
		// 데이터 저장
		model.addAttribute("partyBbsListPagingData", partyBbsListPagingData);
		return "party/PartyBbs.tiles";
	}

	// 파티원 게시판 글 작성으로 이동
	@RequestMapping(value = "/partyBbsWrite.do", method = RequestMethod.GET)
	public String partyBbsWrite(@ModelAttribute("email") String email) {
		return "party/PartyBbsWrite.tiles";
	}

	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value="/categoryCheck.do", method = RequestMethod.POST)
	public int categoryCheck(@ModelAttribute("email") String email, @RequestParam Map map) throws Exception {
		int result = partyBbsService.categoryCheck(map);
		return result;
	}
	
	// 파티원 게시판 글 작성, 파티멤버 등록
	@RequestMapping(value = "/partyBbsWrite.do", method = RequestMethod.POST)
	public String partyBbsWriteOk(@ModelAttribute("email") String email, @RequestParam Map map, Model model, HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		map.put("email", email);
		int result = partyBbsService.categoryCheck(map);
		System.out.println("affected 0이면 중복X 1이상이면 중복O : " + result);
		if (result >= 1) {
			out.println("<script>alert('이미 해당 카테고리에 파티 모집이 있습니다.');location.href='/nbbang/partyBbsWrite.do';</script>");
			out.flush();
		} else if (result == 0) {
			partyBbsService.insert(map);
			partyMemberService.insert(map);
		}
		return "forward:/partyBbs.do";
	}

	// 파티원 게시판 글 삭제 (자식까지 모두)
	@RequestMapping("/partyBbsDelete.do")
	public String delete(@ModelAttribute("email") String email, @RequestParam Map map) throws Exception {
		partyBbsService.delete(map);
		return "forward:/partyBbs.do";
	}

	// 파티원 게시판 신고된 게시글 상세
	@RequestMapping("/partyBbsView.do")
	public String partyBbsView(@ModelAttribute("email") String email, @RequestParam Map map, Model model) {
		PartyBbsDTO record = partyBbsService.partySelectOne(map);
		record.setPartyContent(record.getPartyContent().replace("\r\n", "<br/>"));
		model.addAttribute("record", record);
		String nowPartyMemberReport = partyBbsService.nowPartyMemberReport(map);
		System.out.println("nowPartyMemberReport : " + nowPartyMemberReport);
		model.addAttribute("nowPartyMemberReport", nowPartyMemberReport);
		return "party/PartyBbsViewForReport.tiles";
	}

	// 신고된 게시글 마감 처리
	@RequestMapping("/closedParty.do")
	public String ClosedParty(@RequestParam Map map, Model model) {
		String strPartyNo = (String) map.get("partyNo");
		int partyNo = Integer.parseInt(String.valueOf(strPartyNo));
		String partyActivation = partyBbsService.getActivation(map);		
		int affected = partyBbsService.setActivation(map);
		if (affected == 1) {
			return "admin/AdminMain";
		}
		return "first";
	}

} // end PartyBbsController