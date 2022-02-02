package com.kosmo.nbbang.mycal.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.nbbang.mycal.service.CalDTO;
import com.kosmo.nbbang.mycal.service.CalendarService;

@Service
public class CalendarServiceImpl implements CalendarService{
   @Autowired
   private CalDAO caldao;
    
   @Override
   public int insert(Map map) {
      int affected = 0;
      try {
         affected = caldao.insert(map);
      } catch (Exception e) {
         e.printStackTrace();
      }
      return affected;
   }

   @Override
   public int delete(Map map) {
      // TODO Auto-generated method stub
      return 0;
   }

   @Override
   public int update(Map map) {
      // TODO Auto-generated method stub
      return 0;
   }

   @Override
   public int selectCheck(Map map) {
      return caldao.selectCheck(map);
   }

   public int saveUpdate(Map map) {
      return caldao.saveUpdate(map);
   }
   
   public int mycalRead(Map map) {
      return caldao.mycalRead(map);
   }

   @Override
   public List<CalDTO> selectList(String email) {
	  return caldao.selectList(email);
   }
   
   
   																															
}