package com.kosmo.nbbang.mycal.service;

import java.sql.Date;

public class CalDTO {
   
   private String calNo;
   private String calSubTitle;
   private String email;
   private String calSubContent;   
   private Date startDate;
   private Date endDate;
   private String allday;
   
   public CalDTO(String calNo, String calSubTitle, String email, String calSubContent, Date startDate, Date endDate,
         String allday) {
      super();
      this.calNo = calNo;
      this.calSubTitle = calSubTitle;
      this.email = email;
      this.calSubContent = calSubContent;
      this.startDate = startDate;
      this.endDate = endDate;
      this.allday = allday;
   }

   public String getCalNo() {
      return calNo;
   }

   public void setCalNo(String calNo) {
      this.calNo = calNo;
   }

   public String getCalSubTitle() {
      return calSubTitle;
   }

   public void setCalSubTitle(String calSubTitle) {
      this.calSubTitle = calSubTitle;
   }

   public String getEmail() {
      return email;
   }

   public void setEmail(String email) {
      this.email = email;
   }

   public String getCalSubContent() {
      return calSubContent;
   }

   public void setCalSubContent(String calSubContent) {
      this.calSubContent = calSubContent;
   }

   public Date getStartDate() {
      return startDate;
   }

   public void setStartDate(Date startDate) {
      this.startDate = startDate;
   }

   public Date getEndDate() {
      return endDate;
   }

   public void setEndDate(Date endDate) {
      this.endDate = endDate;
   }

   public String getAllday() {
      return allday;
   }

   public void setAllday(String allday) {
      this.allday = allday;
   }
   
   
}