package com.kosmo.nbbang.auth;

import java.util.Map;



import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;


@SessionAttributes({"email","password"})
@Controller
public class LoginNoutController {
	
	//로그인 처리
	@RequestMapping("/memberlogin.do")
	public String login(@RequestParam Map map,Model model) {
		if("KIM".equals(map.get("email")) && "1234".equals(map.get("password"))) {
			model.addAllAttributes(map);
			model.addAttribute("isLoginMessage", map.get("email")+"님 환영합니다 :)");
			return "index";	
		} else if("admin".equals(map.get("email")) && "1234".equals(map.get("password"))) {
			model.addAllAttributes(map);
			return "admin/AdminMain";	
		} else if("nbbang29@nbbang.com".equals(map.get("email")) && "nbbang".equals(map.get("password"))) {
			model.addAllAttributes(map);
			model.addAttribute("isLoginMessage", map.get("email")+"님 환영합니다 :)");
			return "index";
		} else {
			model.addAttribute("errorMessage", "이메일과 비밀번호가 일치하지 않습니다.");
			return "auth/login/Login";	
		}
	}
	
	//로그아웃
	@RequestMapping("/memberlogout.do")
	public String logout(SessionStatus status) {
		
		status.setComplete();
		
		return "first";
	}
	
	
	
	
	
}
