package com.kosmo.nbbang.hwang.service;

import lombok.Getter;
import lombok.Setter;
/*
@Getter
@Setter
public class UssrCommentDTO {
	private String comno;
	private String comcontent;
	private java.sql.Date compostDate;
	private String comoriginfilename;
	private String comfilename;
	private String ussrno;
	private String email;

	// 닉네임뿌려주기용
	private String nickname;
}
*/
public class UssrCommentDTO {
	private String comno;
	private String comcontent;
	private java.sql.Date compostDate;
	private String comoriginfilename;
	private String comfilename;
	private String ussrno;
	private String email;

	// 닉네임뿌려주기용
	private String nickname;

	public String getComno() {
		return comno;
	}

	public void setComno(String comno) {
		this.comno = comno;
	}

	public String getComcontent() {
		return comcontent;
	}

	public void setComcontent(String comcontent) {
		this.comcontent = comcontent;
	}

	public java.sql.Date getCompostDate() {
		return compostDate;
	}

	public void setCompostDate(java.sql.Date compostDate) {
		this.compostDate = compostDate;
	}

	public String getComoriginfilename() {
		return comoriginfilename;
	}

	public void setComoriginfilename(String comoriginfilename) {
		this.comoriginfilename = comoriginfilename;
	}

	public String getComfilename() {
		return comfilename;
	}

	public void setComfilename(String comfilename) {
		this.comfilename = comfilename;
	}

	public String getUssrno() {
		return ussrno;
	}

	public void setUssrno(String ussrno) {
		this.ussrno = ussrno;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

}

