
package com.kosmo.nbbang.hwang.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ussrCommentDAO {
	
	@Autowired
	private SqlSessionTemplate template;

	public List<Map> selectList(Map map) {
		
		return template.selectList("ussrCommentListsUsingAjax",map);
	}

	public int insert(Map map) {
		template.insert("ussrCommentInsert",map);
		return Integer.parseInt(map.get("comno").toString());
	}

	public String findNameById(String id) {
		return template.selectOne("ussrFindNameById",id);
	}

	public int update(Map map) {		
		return template.update("ussrCommentUpdate",map);
	}

	public int delete(Map map) {
		
		return template.delete("ussrCommentDelete",map);
	}

	public int deleteByNo(Map map) {
		return template.delete("ussrCommentDeleteByNo",map);
	}
}
