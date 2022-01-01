package com.kosmo.nbbang.partykang.serviceimpl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.nbbang.partykang.service.PartyChatDTO;

@Repository
public class PartyChatDAO {

	@Autowired
	private SqlSessionTemplate template;

	public List<PartyChatDTO> getMyChat(String email) {
		return template.selectList("getMyChat", email);
	}

	public String getNickName(String chatpartnerid) {
		return template.selectOne("getNickName", chatpartnerid);
	}
}
