package com.kosmo.nbbang.partybbs.service;

import java.util.List;

public class ListPagingData<T> {
	
	private List<T> lists; // 레코드 목록
	
	// 페이징 관련 데이터
	private int totalRecordCount;
	private int pageSize;
	private int blockPage;
	private int nowPage;
	private String paginString;
	
	// 생성자
	public ListPagingData() {
		super();
	}

	public ListPagingData(List<T> lists, int totalRecordCount, int pageSize, int blockPage, int nowPage,
			String paginString) {
		super();
		this.lists = lists;
		this.totalRecordCount = totalRecordCount;
		this.pageSize = pageSize;
		this.blockPage = blockPage;
		this.nowPage = nowPage;
		this.paginString = paginString;
	}

	// Getter, Setter
	public List<T> getLists() {
		return lists;
	}

	public void setLists(List<T> lists) {
		this.lists = lists;
	}

	public int getTotalRecordCount() {
		return totalRecordCount;
	}

	public void setTotalRecordCount(int totalRecordCount) {
		this.totalRecordCount = totalRecordCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getBlockPage() {
		return blockPage;
	}

	public void setBlockPage(int blockPage) {
		this.blockPage = blockPage;
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public String getPaginString() {
		return paginString;
	}

	public void setPaginString(String paginString) {
		this.paginString = paginString;
	}
	
} // end ListPagingData