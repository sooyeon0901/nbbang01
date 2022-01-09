package com.kosmo.nbbang.hwang.web;


import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kosmo.nbbang.hwang.service.ListPagingData;
import com.kosmo.nbbang.hwang.service.ussrDTO;
import com.kosmo.nbbang.hwang.service.ussrService;
import com.kosmo.nbbang.hwang.service.impl.ussrServiceImpl;

@SessionAttributes("email")
@RequestMapping("/recommand/")
@Controller
public class ussrController {

	@Resource(name = "ussrService")
	private ussrServiceImpl ussrService;

	// 목록 처리]
	@RequestMapping("recommandList.do")
	public String list(@RequestParam Map map,
						@RequestParam(required = false, defaultValue = "1") int nowPage,
						HttpServletRequest req,
						Model model) {
		ListPagingData<ussrDTO> listPagingData = ussrService.selectList(map, req, nowPage);
		model.addAttribute("listPagingData", listPagingData);
		return "recommand/RecommandList.tiles";
	}
	
	/*
	@RequestMapping(value="recommandWrite.do", method=RequestMethod.GET)
	public String write(@ModelAttribute("email") String email) {
		
		return "recommand/RecommandWrite.tiles";
	}

	// 입력처리]
	@RequestMapping(value="Write.do", method=RequestMethod.POST)
	public String writeOk(@ModelAttribute("email") String email, @RequestParam Map map) throws Exception {
		map.put("email", email);
		ussrService.insert(map);
		return "forward:/recommand/recommandList.do";
	}
	*/
	
	// 상세보기]
	@RequestMapping("recommandView.do")
	public String view(@ModelAttribute("email") String email, @RequestParam Map map, Model model) {
		ussrDTO record = ussrService.selectOne(map);
		record.setUssrcontent(record.getUssrcontent().replace("\r\n", "<br/>"));
		model.addAttribute("record", record);
		return "recommand/RecommandView.tiles";
	}

	// 수정폼으로 이동 및 수정처리]
	@RequestMapping("recommandEdit.do")
	public String edit(@ModelAttribute("email") String email, @RequestParam Map map, HttpServletRequest req) {
		if (req.getMethod().equals("GET")) {
			ussrDTO record = ussrService.selectOne(map);
			req.setAttribute("record", record);
			return "recommand/RecommandEdit.tiles";
		}
		ussrService.update(map);
		return "forward:/recommand/recommandView.do";
	}

	// 삭제처리]
	@RequestMapping("recommandDelete.do")
	public String delete(@ModelAttribute("email") String email,@RequestParam Map map) throws Exception {
		ussrService.delete(map);
		return "forward:/recommand/recommandList.do";
	}
}