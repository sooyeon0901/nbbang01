package com.kosmo.nbbang.mycal.service.Impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.mycal.service.CalDTO;

@Repository
public class CalDAO {
   @Autowired
   private SqlSessionFactory sqlMapper;
   
   @Autowired
   private SqlSessionTemplate template;
   
   public int insert(Map map) {
      int affected = template.insert("mycalInsert", map);
      return affected;
   }

   public int selectCheck(Map map) {
      return template.selectOne("checkDouble", map);
   }

   public int saveUpdate(Map map) {
      int no=template.selectOne("selectDate", map);
      map.put("no", no);
      return template.update("saveUpdate",map);
   }

   public int mycalRead(Map map) {
      // TODO Auto-generated method stub
      return 0;
   }

   public List<CalDTO> selectList(String email) {
      return template.selectList("getCals",email);
   }
   

   

}