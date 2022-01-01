package com.kosmo.nbbang.partykang.service;

import java.util.List;

public interface PartyService {

	List<PartyChatDTO> getMyChat(String email);
	String getNickName(String chatpartnerid);
}