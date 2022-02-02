package com.kosmo.nbbang.mycal;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kosmo.nbbang.mycal.service.CalDTO;
import com.kosmo.nbbang.mycal.service.Impl.CalendarServiceImpl;



@SessionAttributes({"email"})

@Controller
public class CalendarController {

   @Autowired
   private CalendarServiceImpl service;
   
   //@Autowired
   //private ObjectMapper mapper;
   
   @RequestMapping("/mySchedule.do")
   public String mySchedule(@ModelAttribute("email") String email, Model model) {
      System.out.println(email);
      List<CalDTO> lists = service.selectList(email);
      model.addAttribute("lists", lists);
      for(CalDTO dto : lists)
         System.out.println(dto.getCalSubTitle());
      return "schedule/MySchedule.tiles";
   }
   
   @RequestMapping(value="/schedule/MySchedule.do",produces = "application/json; charset=UTF-8")
   public @ResponseBody String setMySchedule(@RequestParam Map map) {
      int affected = service.insert(map);
      return String.valueOf(affected);
      
   }
   @RequestMapping(value="/schedule/saveUpdate.do",produces = "application/json; charset=UTF-8")
   public @ResponseBody String saveUpdate(@RequestParam Map map) {
      int affected = service.saveUpdate(map);
      return String.valueOf(affected);
      
   }
   @RequestMapping(value="/schedule/checkDouble.do",produces = "application/json; charset=UTF-8")
   public @ResponseBody String checkDouble(@RequestParam Map map) {
      int affected = service.selectCheck(map);
      return String.valueOf(affected);
   }
   @RequestMapping(value="/schedule/mycalRead.do",produces = "application/json; charset=UTF-8")
   public @ResponseBody String mycalRead(@RequestParam Map map) {
      int affected = service.mycalRead(map);
      return String.valueOf(affected);
   }
   
}