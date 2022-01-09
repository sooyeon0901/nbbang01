package com.kosmo.nbbang.hwang.service;

import java.sql.SQLException;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

public interface ussrService {

	boolean isLogin(Map map);
	ListPagingData<ussrDTO> selectList(Map map,HttpServletRequest req,int nowPage);
	ussrDTO selectOne(Map map);
	int insert(Map map);
	int delete(Map map);
	int update(Map map);
	
}
