package com.kosmo.nbbang.web;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.nbbang.hwang.service.ListPagingData;
import com.kosmo.nbbang.hwang.service.UssrDTO;
import com.kosmo.nbbang.hwang.service.impl.UssrServiceImpl;
import com.kosmo.nbbang.partybbs.service.PartyBbsDTO;
import com.kosmo.nbbang.partybbs.service.impl.PartyBbsServiceImpl;
import com.kosmo.nbbang.service.InquiryBbsDTO;
import com.kosmo.nbbang.service.InquiryBbsService;
import com.kosmo.nbbang.service.ReportDTO;
import com.kosmo.nbbang.service.ReportService;

@Controller
public class ReportController {
	
	@Autowired
	private ReportService reportService;
	@Autowired
	private InquiryBbsService inquiryBbsService;
	@Autowired
	private PartyBbsServiceImpl partyBbsService;
	@Autowired
	private UssrServiceImpl ussrService;
	
	
	@RequestMapping("/reportInsert.do")
	public String reportInsert(@RequestParam Map map) {
		int affected = reportService.insert(map);
		
		return "report/ReportOk.tiles";
	}
	
	//신고 list 출력 관리자페이지
	@RequestMapping("/adminReport.do")
	public String adminReportlist(@RequestParam Map map, @RequestParam(required = false, defaultValue = "1") int nowPage,
								   HttpServletRequest req,Model model) {
	
		ListPagingData<ReportDTO> listPagingData = reportService.selectList(map, req, nowPage);
		model.addAttribute("listPagingData", listPagingData);
	
	return "admin/AdminWarning";
	}
	
	//404페이지 신고받아오기
	@RequestMapping("/reportPage.do")
	public String report404Page(@RequestParam Map map, Model model) {
		return "report/Report.tiles";
	}

	//404페이지 신고처리
	@RequestMapping("/reportInsert404.do")
	public String report404PageOk(@RequestParam Map map, Model model) {
		int affected = reportService.insert404(map);

		return "report/ReportOk.tiles";
	}
	
	//추천/자유 게시판 신고받아오기(카테고리 나눠야함..)
	@RequestMapping("/ussrReport.do")
	public String ussrReport(@RequestParam Map map, Model model) {

		UssrDTO record = ussrService.selectOne(map);
		model.addAttribute("record", record);

		return "recommand/Report.tiles";
	}
	//추천/자유 게시판 신고처리 (카테고리 나눠야함..)
	@RequestMapping("/ussrReportOk.do")
	public String ussrReportOk(@ModelAttribute("ussrno") String ussrno, @RequestParam Map map, Model model) {

		System.out.println("ussrReportOk의 이메일" + map.get("email"));

		int affected = reportService.insertUssr(map);
		model.addAttribute("ussrno:" + ussrno);

		return "report/ReportOk.tiles";
	}
	
	//문의 게시판 신고받아오기
	@RequestMapping("/oboReport.do")
	public String OBOreport(@RequestParam Map map,Model model){
		
		InquiryBbsDTO record = inquiryBbsService.inqSelectOne(map);
		model.addAttribute("record", record);

		return "guide/onebyoneqna/Report.tiles";
	}
	//문의 게시판 신고처리 
	@RequestMapping("/oboReportOk.do")
	public String OBOreportOk(@ModelAttribute("inqno") String inqno,@RequestParam Map map,Model model){
		
		System.out.println("OBOreportOk의 이메일"+map.get("email"));
		
		int affected = reportService.insert(map);
		model.addAttribute("inqno:"+inqno);
		
		return "report/ReportOk.tiles";
	}
	
	//파티원 게시판 신고받아오기
	@RequestMapping("/partyReport.do")
	public String partyReport(@ModelAttribute("email") String email, @RequestParam Map map, Model model) {

		PartyBbsDTO record = partyBbsService.partySelectOne(map);
		model.addAttribute("record", record);

		return "party/Report.tiles";
	}

	//파티원 게시판 신고처리
	@RequestMapping("/partyReportOk.do")
	public String partyReportOk(@ModelAttribute("partyNo") String partyNo, @RequestParam Map map,Model model) {
		//report.xml에 컬럼 추가, dto수정, db실제에도 컬럼 추가
		//신고테이블에 insert
		
		int affected = reportService.insertParty(map);
		model.addAttribute("partyNo:" + partyNo);


		return "report/ReportOk.tiles";
	}
		
	
	
	//관리자에서 클릭시 해당 신고물로 넘어가기 
	@RequestMapping("/findReport.do")
	public String findReport(@ModelAttribute("reportbbs") String reportbbs,@ModelAttribute("inqno") String inqno,@ModelAttribute("ussrno") String ussrno,
			@ModelAttribute("partyNo") String partyNo,@RequestParam Map map,Model model) {
		
		//넘어오는 게시판 키값 받기
		model.addAttribute("reportbbs:"+reportbbs);
		model.addAttribute("inqno:"+inqno);
		model.addAttribute("partyNo:"+partyNo);
		model.addAttribute("ussrno:"+ussrno);
		
		//문의게시판
		if(reportbbs.equals("문의게시판")) {
			String url = "forward:/oneByOneBbsView.do?inqno="+inqno;
			return url;
		} else if(reportbbs.equals("파티원게시판")) {
			String url = "forward:/partyBbsView.do?partyNo="+partyNo;
			return url;
		} else if(reportbbs.equals("추천게시판") || reportbbs.equals("자유게시판")) {
			String url = "forward:/ussrView.do?ussrno="+ussrno;
			return url;
		}
		
		return "admin/AdminWarning";
	}

}
