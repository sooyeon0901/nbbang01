package com.kosmo.nbbang.partybbs.service.impl;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.nbbang.partybbs.service.ListPagingData;
import com.kosmo.nbbang.partybbs.service.PartyBbsDTO;
import com.kosmo.nbbang.partybbs.service.PartyBbsService;

@Service
public class PartyBbsServiceImpl implements PartyBbsService {

	@Autowired
	private PartyBbsDAO dao;

	@Override
	public ListPagingData<PartyBbsDTO> selectList(Map map, HttpServletRequest req, int nowPage) {
		return null;
	}

	@Override
	public int getTotalRecord(Map map) {
		return 0;
	}

	@Override
	public int insert(Map map) {
		int affected = 0;
		try {
			affected = dao.insert(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return affected;
	}

	@Override
	public int update(Map map) {
		return 0;
	}

	@Override
	public int delete(Map map) {
		return 0;
	}

} // end PartyBbsServiceImpl