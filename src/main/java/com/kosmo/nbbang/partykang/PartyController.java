package com.kosmo.nbbang.partykang;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kosmo.nbbang.admin.service.AdminMemberDTO;
import com.kosmo.nbbang.partykang.service.PartyChatDTO;
import com.kosmo.nbbang.partykang.serviceimpl.PartyServiceImpl;

@SessionAttributes({"email","password"})
@Controller
public class PartyController {
	
	@Autowired
	private PartyServiceImpl partyService;

	// 파티 채팅
	@RequestMapping("/partyChat.do")
	public String partyChat(@ModelAttribute("email") String email,Model model) {
		System.out.println("이메일:"+email);
		List<PartyChatDTO> chatList = partyService.getMyChat(email);
		Map map = new HashMap();		
		for(PartyChatDTO dto : chatList) {
			System.out.println(dto.getChatno());
			System.out.println(dto.getPartyno());
			System.out.println(dto.getChatpartnerid());
			System.out.println(dto.getEmail());
			String member = partyService.getNickName(dto.getChatpartnerid());
			System.out.println(member);
			map.put(dto.getChatpartnerid(), member);
		}
		model.addAttribute("nickname", map);
		model.addAttribute("chatList", chatList);
		return "party/PartyChat.tiles";
	}
}
