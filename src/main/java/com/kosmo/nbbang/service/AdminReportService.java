package com.kosmo.nbbang.service;

import java.util.List;
import java.util.Map;

public interface AdminReportService {
	
	AdminReportDTO getMembercount(Map map);  
	
	AdminReportDTO getMatchcount(Map map);
	
	AdminReportDTO getInqcount(Map map);
	
	AdminReportDTO getReportcount(Map map);
	
	List<AdminReportDTO> getUssrCount(Map map);
	
	List<AdminReportDTO> getUserType(Map map);
	
	List<AdminReportDTO> getPartyCount(Map map);
	
	List<AdminReportDTO> getGenderCount(Map map);
}
 