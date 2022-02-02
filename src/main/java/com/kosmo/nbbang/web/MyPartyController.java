package com.kosmo.nbbang.web;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kosmo.nbbang.partybbs.service.PartyBbsDTO;
import com.kosmo.nbbang.partybbs.service.impl.PartyBbsServiceImpl;
import com.kosmo.nbbang.service.impl.PartyMemberServiceImpl;

@SessionAttributes("email")
@Controller
public class MyPartyController {
	
	// 서비스 주입
	@Autowired
	private PartyBbsServiceImpl partyBbsService;
	
	//내 파티
	@RequestMapping("/myParty.do")
	public String myParty(@ModelAttribute("email") String email, @RequestParam Map map, Model model) {
		

		
		List<PartyBbsDTO> partyBbsList = partyBbsService.getList(email);
		List<PartyBbsDTO> temp = new Vector();
		for (PartyBbsDTO dto : partyBbsList) {
			map.put("partyNo", dto.getPartyNo());
			System.out.println("dto.getPartyNo() : " + dto.getPartyNo());
			System.out.println(dto.getPartyCategoryName());
			
			System.out.println("파티 매치 날짜 : " + dto.getPartyMatchdate());
			
			if (dto.getPartyMatchdate() != null) {
		        Calendar cal = Calendar.getInstance();
		        cal.setTime(new Date(dto.getPartyMatchdate().getTime()));
		        cal.add(Calendar.MONTH,6);
		        java.sql.Date endDate = new java.sql.Date(cal.getTimeInMillis());
		        dto.setEndDate(endDate);
		        System.out.println(endDate);
			}
			String count = partyBbsService.nowPartyMember(dto.getPartyNo());
			System.out.println("count : " + count);
			dto.setCount(count);
			temp.add(dto);
		}
		model.addAttribute("partyBbsList", temp);
		return "schedule/MyParty.tiles";
	}

} // end MyPartyController