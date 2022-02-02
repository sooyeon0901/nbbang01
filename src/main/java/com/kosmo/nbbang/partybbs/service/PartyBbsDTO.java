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
	private Date partyMatchdate;
	private String nickname;
	private String profile;
	private String oringinProfile;
	private String partyLeader;
	private String count;
	private String chatExists;
	private Date endDate;
	
	// 생성자
	public PartyBbsDTO() {
	}
	
	public PartyBbsDTO(String partyNo, String partyTitle, String partyContent, Date partyPostdate,
			String partyMaxCapacity, String partyActivation, String partyAllotmentPrice, String partyCategoryName,
			String partyMembership, String email, Date partyMatchdate, String nickname, String profile, 
			String oringinProfile, String partyLeader, String count, String chatExists, Date endDate) {
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
		this.partyMatchdate = partyMatchdate;
		this.nickname = nickname;
		this.profile = profile;
		this.oringinProfile = oringinProfile;
		this.partyLeader = partyLeader;
		this.count = count;
		this.chatExists = chatExists;
		this.endDate = endDate;
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
	public Date getPartyMatchdate() {
		return partyMatchdate;
	}
	public void setPartyMatchdate(Date partyMatchdate) {
		this.partyMatchdate = partyMatchdate;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getOringinProfile() {
		return oringinProfile;
	}
	public void setOringinProfile(String oringinProfile) {
		this.oringinProfile = oringinProfile;
	}

	public String getPartyLeader() {
		return partyLeader;
	}

	public void setPartyLeader(String partyLeader) {
		this.partyLeader = partyLeader;
	}

	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}

	public String getChatExists() {
		return chatExists;
	}

	public void setChatExists(String chatExists) {
		this.chatExists = chatExists;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
} // end PartyBbsDTO 