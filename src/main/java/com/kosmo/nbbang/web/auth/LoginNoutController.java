package com.kosmo.nbbang.web.auth;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import com.kosmo.nbbang.service.impl.MemberServiceImpl;


@SessionAttributes({"email"})
@Controller
public class LoginNoutController {
	
	@Resource(name = "memberService")
	private MemberServiceImpl memberService;
	
	
	@RequestMapping("/memberlogin.do")
	public String process(@RequestParam Map map, Model model,SessionStatus status,HttpSession session,HttpServletRequest req) {
		String nickname = memberService.getNickname(map);
		int flag = memberService.isLogin(map);
		String blackMember = memberService.blackMember(map);
		String email = (String) map.get("email");
		model.addAttribute("email",email);
		model.addAttribute("password",map.get("password"));
		model.addAttribute("nickname",nickname);
		session.setAttribute("nickname", nickname);
		session.setAttribute("email", email);
		
		
		if(flag == 0) {
			//회원이 아닐경우 저장된 데이터 삭제
			status.setComplete();
			model.addAttribute("NotMember","아이디와 비밀번호가 일치하지 않습니다.");
			return "auth/login/Login";
		} else if(map.get("email").equals("nbbang@nbbang.com")) {
			//관리자 로그인, 아래 modal 확인해서 필요없으면 지우기 
			model.addAttribute("nickname",nickname);
			return "admin/AdminMain";
		} else if(blackMember.equals("black")) {
			model.addAttribute("blackMember",blackMember);
			System.out.println("blackMember확인:"+blackMember);
			return "auth/404";
		} 
		return "index";
	}
	//로그아웃 처리]
	@RequestMapping("/memberlogout.do")
	public String logout(SessionStatus status){
		
		status.setComplete();
		
		return "first";
	}
	
	@RequestMapping("/sociallogin.do")
	public String socialProcess(@RequestParam Map map, Model model,SessionStatus status,HttpSession session,HttpServletRequest req) {
		int flag = memberService.socialLogin(map);
		String nickname = map.get("nickname").toString();
		String loginType = map.get("loginType").toString();
		String email = map.get("email").toString();
		System.out.println("nickname:"+nickname);
		System.out.println("loginType:"+loginType);
		System.out.println("email:"+email);
		model.addAttribute("email",email);
		model.addAttribute("password",map.get("password"));
		model.addAttribute("nickname",nickname);
		model.addAttribute("loginType",loginType);
		session.setAttribute("nickname", nickname);
		session.setAttribute("email", email);
		
		if(loginType == null) {
			return "forward:/memberlogin.do";
		}
		if(flag == 0) {
			return "auth/register/SignUp";
		}
		return "index";
	}
	
	
	@RequestMapping("/findEmail.do")
	public @ResponseBody String findEmail(@RequestParam Map map,Model model,SessionStatus status) {
		String result = memberService.findEmail(map);
		
		model.addAttribute("findMemberEmail",result);
		
		if(result==null) {
			status.setComplete();
			return null;
		}
		
		return result;
	}
	//관리자페이지 - 신고관리 - 대상클릭 - 파티원관리페이지에서 회원정지시 : 잘 작동됨
	@RequestMapping("/partyBlackMember.do")
	public String partyBlackMember(@RequestParam Map map,Model model) {
		
		String email = (String) map.get("email");
		String authority = memberService.authorityByEmail(map);
		
		System.out.println("email"+email);
		System.out.println("authority"+authority);
		
		int affected = memberService.setBlackMember(map);
		
		if(affected == 1) {
			return "forward:/adminmember.do";
		}
		
		return "first";
	}
	/*
	//관리자페이지 - 회원관리에서 회원정지시 : 해결중
	@RequestMapping("/blackMember.do")
	public @ResponseBody String blackMember(@ModelAttribute("emailAdmin") String emailAdmin,@RequestParam Map map,Model model,SessionStatus status) {
		map.put("emailAdmin", emailAdmin);
		System.out.println("emailAdmin"+emailAdmin);
		
		String authority = memberService.authorityByEmail(map);
		
		
		if(authority == null || authority.equals("normal")) {
			System.out.println("blackMember설정 if문 진입");
			memberService.setBlackMember(map);
			return "admin/AdminMember";
		}
		
		model.addAttribute("authority",authority); 
		System.out.println("authority확인:"+authority);
		
		return "auth/404";
	}
	*/
	//회원탈퇴 페이지
	@RequestMapping("/resignPage.do")
	public String resignPage(@RequestParam Map map,Model model,SessionStatus status) {
		
		return "auth/Resign.tiles";
	}
		
	//회원탈퇴
	@RequestMapping("/resign.do")
	public String resign(@ModelAttribute("email") String email,@ModelAttribute("password") String password,@RequestParam Map map,Model model,SessionStatus status) {
		
		int flag = memberService.isLogin(map);
		if(flag==1) {
			map.put("email", email);
			map.put("password", password);
			
			memberService.delete(map);
			status.setComplete();
		}else {
			model.addAttribute("errorMessage","아이디와 비밀번호가 다릅니다.");
			return "auth/Resign.tiles";
		}
		

		return "first";
	}
	
	
}
