package com.kosmo.nbbang.hwang.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.kosmo.nbbang.hwang.service.ussrCommentService;

@Service("ussrCommentService")
public class ussrCommentServiceImpl implements ussrCommentService {

	@Autowired
	private ussrCommentDAO dao;
	
	@Override
	public List<Map> selectList(Map map) {	
		return dao.selectList(map);
	}
	
	@Override
	public String insert(Map map) {
		int cno=dao.insert(map);
		String name=dao.findNameById(map.get("email").toString());
		return String.format("%s:%s",cno,name);
	}

	@Override
	public int delete(Map map) {
		return dao.delete(map);
	}

	@Override
	public int update(Map map) {
		return dao.update(map);
	}

}
