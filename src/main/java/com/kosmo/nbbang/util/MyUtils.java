package com.kosmo.nbbang.util;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Component;

@Component(value = "myutils")
public class MyUtils {

	private static String[] unRegularContent = { "음식 구매", "사무 용품", "의류 구매", "화장품 구매" };
	private static String[] regularContent = { "핸드폰비", "관리비", "보험료", "신용결제", "월세", "청약", "헬스", "적금" };
	private static String[] officialContent = { "넷플릭스", "왓차", "웨이브", "디즈니", "티빙" };
	private static Integer[] officialPrices = { 12000, 12000, 12000, 12000, 12000 };

	/*
	 * 예측 메소드 정기 결제 조건 officialContent 인 경우 or 혹은 데이터 간격이 27~ 32 정도 차이가 나는 경우
	 */

	public List<String> getRegularTransaction(JSONArray data) {
//		System.out.println(data.getJSONObject(0));
		List<String> result = new ArrayList<String>();
		Map<String,Pair> info = new HashMap();
		for (int i = 0; i < data.length(); i++) {
			System.out.println(data.getJSONObject(i));
			JSONObject atom = data.getJSONObject(i);
			System.out.println(atom.toString());
			if (!info.containsKey(atom.get("WD_PRINT_CONTENT"))) {
				info.put(atom.get("WD_PRINT_CONTENT").toString(), new Pair(0, atom));
			} else {
				
				(info.get(atom.get("WD_PRINT_CONTENT").toString())).setData(atom);
			}
		}

		System.out.println("검사 시작");
		for (Entry<String, Pair> entry : info.entrySet()) {
			
			if (entry.getValue().getCount() > 1 && (entry.getValue()).getIsReqular()) {
				result.add(entry.getKey());
			}
		}

		System.out.println("결과 : " +result.size());
		return result;
	}

	/*
	 * 
	 * 다음달로 바꿔주는 메소드
	 * 
	 */

	public Date getNextDate(Date currentDate) {

		Calendar myCal = Calendar.getInstance();
		myCal.setTime(currentDate);
		myCal.add(Calendar.MONTH, 1);

		return myCal.getTime();
	}

}

class Pair {
	private int count;
	private List<JSONObject> data;
	private boolean isRegular = false;
	
	
	public Pair(int count, JSONObject data) {
		super();
		this.count = count;
		this.data = new ArrayList<JSONObject>();
		this.data.add(data);
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public List<JSONObject> getData() {
		return data;
	}

	public void setData(JSONObject data) {
		this.data.add(data);
		this.count += 1;
		if(checkRegular()) {
			this.isRegular=true;
		}
	}

	private boolean checkRegular() {
		boolean result = true;
		long curTime=((long)this.data.get(0).get("TRAN_DATE"));
		
		for(int i = 0 ; i <this.data.size();i++) {
			System.out.println("■"+((long)this.data.get(i).get("TRAN_DATE")));
		}
		
		for(int i = 1 ; i < this.data.size();i++) {
			long nowTime = ((long)this.data.get(i).get("TRAN_DATE"));
			int day =(int) (Math.abs(nowTime-curTime)/(1000*60*60*24));
			System.out.println("★"+day);
			curTime = nowTime;
			if(!(day>27 && day < 32)) {
				result =false;
				break;
			}
		}
		
		return result;
	}
	
	public boolean getIsReqular() {
		return isRegular;
	}

}