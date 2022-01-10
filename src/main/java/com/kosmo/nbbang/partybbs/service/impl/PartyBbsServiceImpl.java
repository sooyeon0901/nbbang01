package com.kosmo.nbbang.partybbs.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.nbbang.partybbs.service.PartyBbsService;

@Service
public class PartyBbsServiceImpl implements PartyBbsService {

	@Autowired
	private PartyBbsDAO dao;

	@Override
	public int insert(Map map) {
		
		System.out.println("서비스 임플 입력");
		int affected = 0;
		try {
			System.out.println("서비스 임플 입력 시도");
			affected = dao.insert(map);
		} catch (Exception e) {
			System.out.println("시도 실패");
			e.printStackTrace();
		}
		System.out.println("리턴");
		return affected;
	}

} // end PartyBbsServiceImpl