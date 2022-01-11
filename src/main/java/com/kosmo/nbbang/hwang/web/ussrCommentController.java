package com.kosmo.nbbang.hwang.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kosmo.nbbang.hwang.service.impl.ussrCommentServiceImpl;

@SessionAttributes({"email"})
@RestController
public class ussrCommentController {

	@Autowired
	private ussrCommentServiceImpl commentService;
	//ObjectMapper API(Jackson에 포함된 클래스) 주입:빈 설정파일에 등록 혹은 SpringBeanConfig클래스에 @Bean으로 등록
	//@Autowired
	//private ObjectMapper mapper;
	
	@PostMapping(value="/recommand/commentList.do",produces = "application/json; charset=UTF-8")	
	public List<Map> list(@ModelAttribute("email") String email, @RequestParam Map map) throws JsonProcessingException {
		List<Map> lists= commentService.selectList(map);
		for(Map comment:lists) {
			comment.put("COMPOSTDATE", comment.get("COMPOSTDATE").toString().substring(0, 10));
		}
		return lists;
	}
	
	//코멘트 입력처리]
	@PostMapping(value="/onememo/comments/Write.do",produces = "text/plain; charset=UTF-8")
	public String write(@ModelAttribute("email") String email,@RequestParam Map map) {
		map.put("email", email);
		String commentInfo = commentService.insert(map);
		return commentInfo;
	}
	
	//코멘트 수정처리]
	@PostMapping(value="/recommand/commentEdit.do",produces = "text/plain; charset=UTF-8")
	public String update(@ModelAttribute("email") String email,@RequestParam Map map) {
		commentService.update(map);
		return map.get("lno").toString();
	}
	
	//코멘트 삭제처리]
	@PostMapping(value="/recommand/commentDelete.do",produces = "text/plain; charset=UTF-8")
	public String delete(@ModelAttribute("email") String email,@RequestParam Map map) {
		int affected=commentService.delete(map);
		return String.valueOf(affected);
	}
	
}
