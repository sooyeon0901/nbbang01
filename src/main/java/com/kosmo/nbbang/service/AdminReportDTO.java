package com.kosmo.nbbang.service;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

/*
@Setter
@Getter*/
public class AdminReportDTO {

	//회원수-member테이블
	private String email;
	
	//매칭성사수-partybbs테이블
	private int partyno;
	private String activation;
	
	//문의수-inquirybbs테이블
	private int inqno;
	
	//신고수-report테이블
	private int reportno;
	
	//월별 가입자수-x
	
	//시간대별(월별) ussrbbs게시글 수 추이-ussrbbs테이블
	private int ussrno;
	private Date ussrpostdate;	
	
	//가입자 경로-member테이블
	private String usertype;
	
	//시간대별(월별) 매칭수 수 추이-party테이블
	//private int partyno;
	private Date partymatchdate;//매칭된날
	 
	//회원성별수 비율-member테이블
	private String gender;
	
	//회원수 저장
	private int membercount;
	
	//매칭 성사수 저장
	private int matchcount;
	 
	//문의수 저장
	private int inqcount;
	
	//신고수 저장
	private int reportcount;
	
	//월별
	private String paymentmon;
	private int mondata;
	private String partypostmon;
	
	//성별수 저장
	private int gendercount;
	
	//가입 경로수 저장
	private int usertypecount;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPartyno() {
		return partyno;
	}

	public void setPartyno(int partyno) {
		this.partyno = partyno;
	}

	public String getActivation() {
		return activation;
	}

	public void setActivation(String activation) {
		this.activation = activation;
	}

	public int getInqno() {
		return inqno;
	}

	public void setInqno(int inqno) {
		this.inqno = inqno;
	}

	public int getReportno() {
		return reportno;
	}

	public void setReportno(int reportno) {
		this.reportno = reportno;
	}

	public int getUssrno() {
		return ussrno;
	}

	public void setUssrno(int ussrno) {
		this.ussrno = ussrno;
	}

	public Date getUssrpostdate() {
		return ussrpostdate;
	}

	public void setUssrpostdate(Date ussrpostdate) {
		this.ussrpostdate = ussrpostdate;
	}

	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}

	public Date getPartymatchdate() {
		return partymatchdate;
	}

	public void setPartymatchdate(Date partymatchdate) {
		this.partymatchdate = partymatchdate;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getMembercount() {
		return membercount;
	}

	public void setMembercount(int membercount) {
		this.membercount = membercount;
	}

	public int getMatchcount() {
		return matchcount;
	}

	public void setMatchcount(int matchcount) {
		this.matchcount = matchcount;
	}

	public int getInqcount() {
		return inqcount;
	}

	public void setInqcount(int inqcount) {
		this.inqcount = inqcount;
	}

	public int getReportcount() {
		return reportcount;
	}

	public void setReportcount(int reportcount) {
		this.reportcount = reportcount;
	}

	public int getMondata() {
		return mondata;
	}

	public void setMondata(int mondata) {
		this.mondata = mondata;
	}

	public int getGendercount() {
		return gendercount;
	}

	public void setGendercount(int gendercount) {
		this.gendercount = gendercount;
	}

	public int getUsertypecount() {
		return usertypecount;
	}

	public void setUsertypecount(int usertypecount) {
		this.usertypecount = usertypecount;
	}

	public String getPaymentmon() {
		return paymentmon;
	}

	public void setPaymentmon(String paymentmon) {
		this.paymentmon = paymentmon;
	}

	public String getPartypostmon() {
		return partypostmon;
	}

	public void setPartypostmon(String partypostmon) {
		this.partypostmon = partypostmon;
	}

	
	
}
