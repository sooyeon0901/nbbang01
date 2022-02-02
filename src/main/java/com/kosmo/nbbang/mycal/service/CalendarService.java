package com.kosmo.nbbang.mycal.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface CalendarService {
   
   //입력/수정/삭제용]   
   int insert(Map map);
   int delete(Map map);
   int update(Map map);
   
   List<CalDTO> selectList(String email);
   
   int mycalRead(Map map);
   
   int selectCheck(Map map);
   
   int saveUpdate(Map map);
}