package com.kosmo.nbbang.hwang.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionTemplate;

import com.kosmo.nbbang.hwang.service.ListPagingData;
import com.kosmo.nbbang.hwang.service.ussrDTO;
import com.kosmo.nbbang.hwang.service.ussrService;
import com.kosmo.nbbang.service.PagingUtil;

@Transactional
@Service("ussrService")
public class ussrServiceImpl implements ussrService {
	
	@Resource(name="ussrDAO")
	private ussrDAO dao;
	
	@Autowired
	private ussrCommentDAO ucdao;
	
	@Value("${PAGE_SIZE}")
	private int pageSize;
	
	@Value("${BLOCK_PAGE}")
	private int blockPage;

	@Override
	public boolean isLogin(Map map) {		
		return dao.isLogin(map);
	}

	@Override
	public ListPagingData<ussrDTO> selectList(
			Map map, HttpServletRequest req, int nowPage) {
		int totalRecordCount = dao.getTotalRowCount(map);	
		int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);	
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		map.put("start", start);
		map.put("end", end);
		List lists= dao.selectList(map);
		String pagingString=PagingUtil.pagingBootStrapStyle(totalRecordCount, 
				pageSize, blockPage, nowPage,
				req.getContextPath()+"/recommand/recommandList.do?");
		
		//Lombok 미 사용시
		/*
		ListPagingData<ussrDTO> listPagingData = new ListPagingData<>();
		listPagingData.setBlockPage(blockPage);
		listPagingData.setLists(lists);
		listPagingData.setNowPage(nowPage);
		listPagingData.setPageSize(pageSize);
		listPagingData.setPagingString(pagingString);
		listPagingData.setTotalRecordCount(totalRecordCount);
		return listPagingData;
		*/
		return ListPagingData.builder().lists(lists).nowPage(nowPage).pageSize(pageSize).pagingString(pagingString).totalRecordCount(totalRecordCount).build();
	}
	
	@Override
	public ussrDTO selectOne(Map map) {		
		return dao.selectOne(map);
	}
	
	@Override
	public int insert(Map map) {	
		
		int affected=0; 
		try {	
			affected=dao.insert(map);	
		}
		catch(Exception e) {e.printStackTrace();}
		return affected;	
	}
	
	@Autowired
	private TransactionTemplate transactionTemplate;
	
	@Override
	public int delete(Map map){
		int affected=0;
		try {
			//람다함수 사용
			affected=transactionTemplate.execute(tx->{
				int commentCount=ucdao.deleteByNo(map);
				dao.delete(map);
				return commentCount;
			});
			
		}
		catch(Exception e) {e.printStackTrace();}
		System.out.println("삭제된 댓글 수:"+affected);
		return affected;
	}
	@Override
	public int update(Map map) {		
		return dao.update(map);
	}

	
	
}
