package com.kosmo.nbbang;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMemberController {

	@Autowired
	private AdminMemberServiceImpl adminMemberService;
	
	@RequestMapping("/adminmember.do")
	public String adminMember(Model model) {
		List<AdminMemberDTO> list = adminMemberService.selectAllMember();
		return "admin/AdminMember";
	}
}
