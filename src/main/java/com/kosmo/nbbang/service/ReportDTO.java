package com.kosmo.nbbang.service;

import java.sql.Date;

public class ReportDTO {
/*
 * reportno number NOT NULL,
    reportbbs varchar2(20) NOT NULL,
	reportcontent nvarchar2(600) NOT NULL,
	reporttype varchar2(10) NOT NULL,
	reportregistdate date DEFAULT SYSDATE NOT NULL,
	email varchar2(40) NOT NULL,
	PRIMARY KEY (reportno)
 * 
 * */
	
	private String reportno;
	private String reportbbs;
	private String reportcontent;
	private String reporttype;
	private java.sql.Date reportregistdate;
	private String inqno;
	private String partyNo;
	private String ussrno;
	private String email;
	
	public ReportDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public ReportDTO(String reportno, String reportbbs, String reportcontent, String reporttype, Date reportregistdate, String inqno,
			String partyNo,String ussrno,
			String email) {
		super();
		this.reportno = reportno;
		this.reportbbs = reportbbs;
		this.reportcontent = reportcontent;
		this.reporttype = reporttype;
		this.reportregistdate = reportregistdate;
		this.inqno = inqno;
		this.partyNo = partyNo;
		this.ussrno = ussrno;
		this.email = email;
	}
	public String getReportno() {
		return reportno;
	}
	public void setReportno(String reportno) {
		this.reportno = reportno;
	}
	public String getReportbbs() {
		return reportbbs;
	}
	public void setReportbbs(String reportbbs) {
		this.reportbbs = reportbbs;
	}
	public String getReportcontent() {
		return reportcontent;
	}
	public void setReportcontent(String reportcontent) {
		this.reportcontent = reportcontent;
	}
	public String getReporttype() {
		return reporttype;
	}
	public void setReporttype(String reporttype) {
		this.reporttype = reporttype;
	}
	
	public String getInqno() {
		return inqno;
	}
	public void setInqno(String inqno) {
		this.inqno = inqno;
	}
	
	public String getPartyNo() {
		return partyNo;
	}
	public void setPartyNo(String partyNo) {
		this.partyNo = partyNo;
	}
	
	public String getUssrno() {
		return ussrno;
	}
	public void setUssrno(String ussrno) {
		this.ussrno = ussrno;
	}
	
	public java.sql.Date getReportregistdate() {
		return reportregistdate;
	}
	public void setReportregistdate(java.sql.Date reportregistdate) {
		this.reportregistdate = reportregistdate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
	
}
