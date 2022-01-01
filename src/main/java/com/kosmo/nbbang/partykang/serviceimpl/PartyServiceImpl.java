package com.kosmo.nbbang.partykang.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.nbbang.partykang.service.PartyChatDTO;
import com.kosmo.nbbang.partykang.service.PartyService;

@Service
public class PartyServiceImpl implements PartyService{
	
	@Autowired
	private PartyChatDAO dao;

	@Override
	public List<PartyChatDTO> getMyChat(String email) {
		return dao.getMyChat(email);
	}

	public String getNickName(String chatpartnerid) {
		return dao.getNickName(chatpartnerid);
	}

}
