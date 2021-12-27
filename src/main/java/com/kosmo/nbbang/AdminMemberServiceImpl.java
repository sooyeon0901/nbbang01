package com.kosmo.nbbang;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminMemberServiceImpl implements AdminMemberService{
	
	@Autowired
	private AdminMemberDAO dao;

	@Override
	public List<AdminMemberDTO> selectAllMember() {		
		return dao.selectAllMember();
	}

}
