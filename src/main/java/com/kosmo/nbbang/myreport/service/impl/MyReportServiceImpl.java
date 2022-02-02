package com.kosmo.nbbang.myreport.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.nbbang.myreport.service.MyReportDTO;
import com.kosmo.nbbang.myreport.service.MyReportService;

@Service
public class MyReportServiceImpl implements MyReportService{
	
	@Autowired
	private MyReportDAO dao;
	
	@Override
	public List<MyReportDTO> getMyReport(Map map) {
		System.out.println(map.get("email"));
		return dao.getMyReport(map);
	}

	@Override
	public List<MyReportDTO> getMyReport2(Map map) {
		
		return dao.getMyReport2(map);
	}
	
	@Override
	public MyReportDTO getYearSum(Map map) {
		
		return dao.getYearSum(map);
	}

	@Override
	public MyReportDTO getMonthSum(Map map) {
		
		return dao.getMonthSum(map);
	}

	@Override
	public MyReportDTO getWeekSum(Map map) {
		
		return dao.getWeekSum(map);
	}
	

}
