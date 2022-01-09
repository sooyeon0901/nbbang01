package com.kosmo.nbbang.hwang.service;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ussrDTO {
	private String ussno;
	private String ussrtitle;
	private String ussrcontent;
	private java.sql.Date ussrpostdate;
	private String ussroriginfilenames;
	private String ussrrealfilenames;
	private String ussrcateforyname;
	private String email;
	
	//각 글에 따른 댓글 총수 저장용
	private String commentCount;
		
	//no에 따른 모든 한줄 댓글 목록 저장용
	//마이바티스의 ResultMap 태그의 collection태그 적용용
	List<ussrCommentDTO> comments;

	/*
	public String getUssno() {
		return ussno;
	}
	public void setUssno(String ussno) {
		this.ussno = ussno;
	}
	public String getUssrtitle() {
		return ussrtitle;
	}
	public void setUssrtitle(String ussrtitle) {
		this.ussrtitle = ussrtitle;
	}
	public String getUssrcontent() {
		return ussrcontent;
	}
	public void setUssrcontent(String ussrcontent) {
		this.ussrcontent = ussrcontent;
	}
	public java.sql.Date getUssrpostdate() {
		return ussrpostdate;
	}
	public void setUssrpostdate(java.sql.Date ussrpostdate) {
		this.ussrpostdate = ussrpostdate;
	}
	public String getUssroriginfilenames() {
		return ussroriginfilenames;
	}
	public void setUssroriginfilenames(String ussroriginfilenames) {
		this.ussroriginfilenames = ussroriginfilenames;
	}
	public String getUssrrealfilenames() {
		return ussrrealfilenames;
	}
	public void setUssrrealfilenames(String ussrrealfilenames) {
		this.ussrrealfilenames = ussrrealfilenames;
	}
	public String getUssrcateforyname() {
		return ussrcateforyname;
	}
	public void setUssrcateforyname(String ussrcateforyname) {
		this.ussrcateforyname = ussrcateforyname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(String commentCount) {
		this.commentCount = commentCount;
	}
	public List<ussrCommentDTO> getComments() {
		return comments;
	}
	public void setComments(List<ussrCommentDTO> comments) {
		this.comments = comments;
	}
	*/
}
