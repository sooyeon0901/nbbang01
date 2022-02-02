package com.kosmo.nbbang.myreport.service;

import java.util.List;
import java.util.Map;

public interface MyReportService {

	List<MyReportDTO> getMyReport(Map map);
	
	List<MyReportDTO> getMyReport2(Map map);
	
	MyReportDTO getYearSum(Map map);
	
	MyReportDTO getMonthSum(Map map);
	
	MyReportDTO getWeekSum(Map map); 
}