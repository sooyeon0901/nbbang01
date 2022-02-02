package com.kosmo.nbbang;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
	//원페이지 첫 화면
	@RequestMapping("/first.do")
	public String first() {
		return "first";
	}
	//홈페이지 진입 첫 화면
	@RequestMapping("/index.do")
	public String handlerMapping() {
		return "index.tiles";
	}
	//챗봇
	@RequestMapping("/chatbot.do")
	public String chatbot() {
		return "chatbot";
	}
	
	//로그인
	@RequestMapping("/login.do")
	public String login() {
	
		return "auth/login/Login";
	}
	//찾기
	@RequestMapping("/findmember.do")
	public String findmember() {
		return "auth/login/FindMember";
	}
	//회원가입
	@RequestMapping("/signup.do")
	public String register() {
		return "auth/register/SignUp";
	}
	//신고하기
	/*
	@RequestMapping("/reportPage.do")
	public String reportPage() {
		return "report/Report.tiles";
	}
	*/
	
	/*
	//파티 채팅
	@RequestMapping("/partyChat.do")
	public String partyChat() {
		return "party/PartyChat.tiles";
	}*/
	
	
	//구독 메인
	@RequestMapping("/managing.do")
	public String schedule() {
		return "schedule/ManagingSubMain.tiles";
	}	
	
	/************************ P J H ****************************/
	//내 구독 초기화면
	@RequestMapping("/mySub.do")
	public String mySub() {
		return "forward:/mysub/mySubinitView.do"; 	//각 사용자 계정에 맞춰 폴더를 뿌려주는 Controller로 포워딩 // ?sfname=All"
	}
	
	//mysub secondFolder(Watch)클릭 후 랜딩
	@RequestMapping("/secondFold.do")
	public String secondFold() {
		return "forward:/mysub/secondFolderView.do";
	}
	
	//mysub thirdFolder(Life)클릭 후 랜딩
	@RequestMapping("/thirdFold.do")
	public String thirdFold() {
		return "forward:/mysub/thirdFolderView.do";
	}
	//mysub수정?
	
	/************************      ****************************/
	//내 스케쥴
	/*@RequestMapping("/mySchedule.do")
	public String mySchedule() {
		return "schedule/MySchedule.tiles";
	}*/

	/*
	//내 리포트
	@RequestMapping("/myReport.do")
	public String myReport() {
		return "schedule/MyReport.tiles";
	}
	*/
	//내 계좌조회
	@RequestMapping("/myAccounts.do")
	public String myAccounts() {
		return "schedule/MyAccounts.tiles";
	}
	//db test
	@RequestMapping("/databaseTest.do")
	public String databaseTest() {
		return "schedule/DBTest.tiles";
	}
	
	
	//이미지분석 test
	@RequestMapping("/imageAnalysis.do")
	public String imageAnalysis() {
		return "recommand/ImageAnalysis.tiles";
	}
	/*//추천 메인
	@RequestMapping("/recommand.do")
	public String recommand() {
		return "recommand/RecommandMain.tiles";
	}*/
	/*
	@RequestMapping("/recommandList.do")
	public String recommandBbs() {
		return "recommand/RecommandList.tiles";
	}//추천 게시판
	
	@RequestMapping("/freeList.do")
	public String freeBbs() {
		return "recommand/FreeList.tiles";
	}//자유 게시판
	
	@RequestMapping("/recommandWrite.do")
	public String recommandWrite() {
		return "recommand/RecommandWrite.tiles";
	}//추천,자유게시판 글쓰기
	
	@RequestMapping("/recommandView.do")
	public String recommandView() {
		return "recommand/RecommandView.tiles";
	}//추천,자유게시판 상세보기
	
	@RequestMapping("/recommandEdit.do")
	public String recommandEdit() {
		return "recommand/RecommandEdit.tiles";
	}//추천,자유게시판 글 수정
	
	@RequestMapping("/recommandDelete.do")
	public String recommandDelete() {
		return "recommand/RecommandDelete.tiles";
	}//추천,자유게시판 글 삭제
	*/
	
	
	//가이드
	@RequestMapping("/guide.do")
	public String guide() {
		return "guide/GuideMain.tiles";
	}
	//1:1문의
	/*
	@RequestMapping("/oneByOneBbsList.do")
	public String oneByOneBbsList() {
		return "guide/onebyoneqna/OneByOneBbsList.tiles";
	}
	*/
	@RequestMapping("/oneByOneBbsWrite.do")
	public String oneByOneBbsWrite() {
		return "guide/onebyoneqna/OneByOneBbsWrite.tiles";
	}
	@RequestMapping("/oneByOneBbsModify.do")
	public String oneByOneBbsModify() {
		return "guide/onebyoneqna/OneByOneBbsModify.tiles";
	}
	
	/*
	@RequestMapping("/oneByOneBbsView.do")
	public String oneByOneBbsView() {
		return "guide/onebyoneqna/OoneByOneBbsView.tiles";
	}
	*/
	
	
	//===============admin
	//관리자 첫 화면
	/*
	@RequestMapping("/admin.do")
	public String admin() {
		return "admin/AdminMain";
	}
	*/
	/*@RequestMapping("/adminmember.do")
	public String adminMember() {
		return "admin/AdminMember";
	}*/
	/*
	@RequestMapping("/adminWarning.do")
	public String adminParty() {
		return "admin/AdminWarning";
	}*/
	/*
	@RequestMapping("/adminOneByOne.do")
	public String adminOneByOne() {
		return "admin/AdminOneByOne";
	}
	*/
	/*@RequestMapping("/adminChat.do")
	public String adminChat() {
		return "admin/AdminChat";
	}*/
	
	
}//IndexController
