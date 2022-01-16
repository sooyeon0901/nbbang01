package com.kosmo.nbbang.vbank.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kosmo.nbbang.aoputils.NumUtils;



@Service
@PropertySource(value = { "classpath:nbbang/resources/bank.properties" })
public class BankingServiceImpl implements BankingService {

	

	@Value("${client.id}")
	private String clientID;
	@Value("${client.callbackurl}")
	private String callBackUrl;
	@Value("${client.secret}")
	private String clientSecret;
		
	@Override
	public Map requestAuthUrl(boolean authorized,Map map) {
		// TODO Auto-generated method stub
		Map<String,String> result = new HashMap();

		String url="";
		int authType=0;
		if(authorized) {
			authType=2;
		}
		url = "https://developers.kftc.or.kr/proxy/oauth/2.0/authorize?response_type=code&client_id=" + clientID
				+ "&redirect_uri=" + callBackUrl
				+ "&scope=login inquiry transfer&client_info=test&state=b80BLsfigm9OokPTjy03elbJqRHOfGSY&auth_type="+authType+"&cellphone_cert_yn=Y&authorized_cert_yn=Y&account_hold_auth_yn=N&register_info=A";
	
		RestTemplate rt = new RestTemplate();
		HttpHeaders myheader = new HttpHeaders();
		myheader.setContentType(MediaType.APPLICATION_JSON_UTF8);
		if(authorized) {
			myheader.add("Kftc-Bfop-UserSeqNo", map.get("user_seq_no").toString());
			myheader.add("Kftc-Bfop-UserCI", map.get("user_ci").toString());
			myheader.add("Kftc-Bfop-AccessToken", map.get("access_token").toString());

		}
		
		
		HttpEntity<String> request = new HttpEntity("", myheader);

		ResponseEntity<Map> res = rt.exchange(url, HttpMethod.GET, request, Map.class);
		System.out.println("After Request");
		System.out.println(res.getHeaders());

		String location= res.getHeaders().getLocation().toString();
		if(location != null) {
			result.put("location", res.getHeaders().getLocation().toString());
			result.put("resp_code", "A2000");
		}else {
			result.put("resp_code", "A1001");
		}

		return result;
		
	}

	@Override
	public Map registNewAccount(Map map) {
		// TODO Auto-generated method stub
		Map<String,String> result = null;
		String code = map.get("code").toString();
		String url = "https://developers.kftc.or.kr/proxy/oauth/2.0/token";
		
		
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
		headers.setAccessControlAllowOrigin("*");
		headers.setAccessControlAllowCredentials(true);
		
		System.out.println(headers.toString());
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("code", code);
		params.add("client_id", clientID);
		params.add("client_secret", clientSecret);
		params.add("redirect_uri", callBackUrl);
		params.add("grant_type", "authorization_code");

		HttpEntity<MultiValueMap<String, String>> entity = new HttpEntity(params, headers);

		RestTemplate rt = new RestTemplate();
		ResponseEntity<Map> response = rt.exchange(url, 
				HttpMethod.POST, 
				entity, 
				Map.class);
		
		result = response.getBody();
		for (Map.Entry<String, String> entry : result.entrySet()) {
			System.out.println(entry.getValue() + " - " + entry.getKey());
		}
		
		return result;

	}
	

	
	

	@Override
	public Map checkAccount(Map map) {
		// TODO Auto-generated method stub
		
		//현재 서버에서 token이 있는지 없는지 확인
		
		Map result = null;
//		result =dao.selectToken();
//		if (result.get("token_type") == null) {
//			return null;
//		}
		
		
		return result;
	}

	@Override
	public Map registOtherAccount() {
		// TODO Auto-generated method stub
		
		
		
		return null;
	}

	
	@Override
	public Map getUserAccounts(Map map) {
		// TODO Auto-generated method stub
		
		
		return null;
	}

	//잔액 조회용
	@Override
	public Map getUserAccount(Map map) {
		// TODO Auto-generated method stub
		Map<String,String> result = null;
		String bank_tran_id = NumUtils.RansTranID();
		String fintech_use_num=map.get("fintech_use_num").toString();
		String tran_dtime = NumUtils.tranDtime();
		String authorization ="Bearer";
		authorization+=new String().format(" %s", map.get("token").toString());
		System.out.println("authorization :" +authorization);
		String url = "https://testapi.openbanking.or.kr/v2.0/account/balance/fin_num";
		
		
		System.out.println("수행");
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
		headers.setAccessControlAllowOrigin("*");
		headers.setAccessControlAllowCredentials(true);
		headers.add("Authorization", authorization);
		System.out.println(headers.toString());
		
		
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("bank_tran_ide", bank_tran_id);
		params.add("fintech_use_num", fintech_use_num);
		params.add("tran_dtime", tran_dtime);
		System.out.println("param : "+ params.toString());
		HttpEntity<MultiValueMap<String, String>> entity = new HttpEntity(params, headers);

		RestTemplate rt = new RestTemplate();
		ResponseEntity<Map> response = rt.exchange(url, 
				HttpMethod.GET, 
				entity, 
				Map.class);
		
		result = response.getBody();
		for (Map.Entry<String, String> entry : result.entrySet()) {
			System.out.println(entry.getValue() + " - " + entry.getKey());
		}
		
		return result;
	}

	@Override
	public Map getTradingStatement(Map map) {
		// TODO Auto-generated method stub
		Map result = null;
		String authorization ="Bearer"+new String().format(" %s", map.get("token").toString());
		System.out.println("authorization :" +authorization);
		
		String bank_tran_id = NumUtils.RansTranID();
		String fintech_use_num = map.get("fintech_use_num").toString();
		String from_date="";
		if(map.get("Date_range") !=null) {
			from_date = NumUtils.tranDtime(Integer.parseInt(map.get("Date_range").toString()));
		}else {
			//default 90일 
			from_date =NumUtils.tranDtime(90).substring(0, 8);
		}
		
		String to_date=NumUtils.tranDtime().substring(0, 8);
		String tran_dtime=NumUtils.tranDtime();
		
		String url = "https://testapi.openbanking.or.kr/v2.0/account/transaction_list/fin_num?"
				+ "bank_tran_id="+bank_tran_id+"&fintech_use_num="+fintech_use_num+"&inquiry_type=A&"
				+ "inquiry_base=D&from_date="+from_date+"&to_date="+to_date+"&sort_order=D&tran_dtime="+tran_dtime;
		
		
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
		headers.setAccessControlAllowOrigin("*");
		headers.setAccessControlAllowCredentials(true);
		headers.add("Authorization", authorization);
		System.out.println(headers.toString());
		
		
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("bank_tran_ide", bank_tran_id);
		params.add("fintech_use_num", fintech_use_num);
		params.add("tran_dtime", tran_dtime);
		System.out.println("param : "+ params.toString());
		HttpEntity<MultiValueMap<String, String>> entity = new HttpEntity(params, headers);

		RestTemplate rt = new RestTemplate();
		ResponseEntity<Map> response = rt.exchange(url, 
				HttpMethod.GET, 
				entity, 
				Map.class);
		
		result = response.getBody();
		
		return result;
		
		
	}
	
	

	@Override
	public Map doTransactionStatement(Map map) {
		// TODO Auto-generated method stub
		return null;
	}
	


}
