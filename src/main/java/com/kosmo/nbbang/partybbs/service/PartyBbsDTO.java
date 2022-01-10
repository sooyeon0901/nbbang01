package com.kosmo.nbbang.partybbs.service;

import java.sql.Date;

public class PartyBbsDTO {
	
	private String partyNo;
	private String partyTitle;
	private String partyContent;
	private Date partyPostdate;
	private String partyMaxCapacity;
	private String partyActivation;
	private String partyAllotmentPrice;
	private String partyCategoryName;
	private String partyMembership;
	private String email;
	
	// 생성자
	public PartyBbsDTO() {
		super();
	}
	
	public PartyBbsDTO(String partyNo, String partyTitle, String partyContent, Date partyPostdate,
			String partyMaxCapacity, String partyActivation, String partyAllotmentPrice, String partyCategoryName,
			String partyMembership, String email) {
		super();
		this.partyNo = partyNo;
		this.partyTitle = partyTitle;
		this.partyContent = partyContent;
		this.partyPostdate = partyPostdate;
		this.partyMaxCapacity = partyMaxCapacity;
		this.partyActivation = partyActivation;
		this.partyAllotmentPrice = partyAllotmentPrice;
		this.partyCategoryName = partyCategoryName;
		this.partyMembership = partyMembership;
		this.email = email;
	}

	// Getter, Setter
	public String getPartyNo() {
		return partyNo;
	}
	public void setPartyNo(String partyNo) {
		this.partyNo = partyNo;
	}
	public String getPartyTitle() {
		return partyTitle;
	}
	public void setPartyTitle(String partyTitle) {
		this.partyTitle = partyTitle;
	}
	public String getPartyContent() {
		return partyContent;
	}
	public void setPartyContent(String partyContent) {
		this.partyContent = partyContent;
	}
	public Date getPartyPostdate() {
		return partyPostdate;
	}
	public void setPartyPostdate(Date partyPostdate) {
		this.partyPostdate = partyPostdate;
	}
	public String getPartyMaxCapacity() {
		return partyMaxCapacity;
	}
	public void setPartyMaxCapacity(String partyMaxCapacity) {
		this.partyMaxCapacity = partyMaxCapacity;
	}
	public String getPartyActivation() {
		return partyActivation;
	}
	public void setPartyActivation(String partyActivation) {
		this.partyActivation = partyActivation;
	}
	public String getPartyAllotmentPrice() {
		return partyAllotmentPrice;
	}
	public void setPartyAllotmentPrice(String partyAllotmentPrice) {
		this.partyAllotmentPrice = partyAllotmentPrice;
	}
	public String getPartyCategoryName() {
		return partyCategoryName;
	}
	public void setPartyCategoryName(String partyCategoryName) {
		this.partyCategoryName = partyCategoryName;
	}
	public String getPartyMembership() {
		return partyMembership;
	}
	public void setPartyMembership(String partyMembership) {
		this.partyMembership = partyMembership;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
} // end PartyBbsDTO