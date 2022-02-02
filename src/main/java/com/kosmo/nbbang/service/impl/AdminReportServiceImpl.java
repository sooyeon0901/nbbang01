package com.kosmo.nbbang.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.nbbang.service.AdminReportDTO;
import com.kosmo.nbbang.service.AdminReportService;

@Service
public class AdminReportServiceImpl implements AdminReportService{

	@Autowired
	private AdminReportDAO dao;
	
	@Override
	public AdminReportDTO getMembercount(Map map) {
		
		return dao.getMembercount(map);
	}

	@Override
	public AdminReportDTO getMatchcount(Map map) {
		
		return dao.getMatchcount(map);
	}

	@Override
	public AdminReportDTO getInqcount(Map map) {
		
		return dao.getInqcount(map);
	}

	@Override
	public AdminReportDTO getReportcount(Map map) {
		
		return dao.getReportcount(map);
	}

	@Override
	public List<AdminReportDTO> getUssrCount(Map map) {
		
		return dao.getUssrCount(map);
	}

	@Override
	public List<AdminReportDTO> getUserType(Map map) {
		
		return dao.getUserType(map);
	}

	@Override
	public List<AdminReportDTO> getPartyCount(Map map) {
		
		return dao.getPartyCount(map);
	}

	@Override
	public List<AdminReportDTO> getGenderCount(Map map) {
		
		return dao.getGenderCount(map);
	}

}
