package com.kosmo.nbbang.park.join;

import java.util.Arrays;
import java.util.Map;
import java.util.regex.Pattern;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.nbbang.park.service.DefWatchService;
import com.kosmo.nbbang.park.service.DefaultService;
import com.kosmo.nbbang.park.service.impl.DefLifeServiceImpl;
import com.kosmo.nbbang.park.service.impl.JoinServiceImpl;

@Controller
public class JoinController {
	
	//서비스 주입받기
	@Resource(name="joinService")
	private JoinServiceImpl joinService;
	
	@Resource(name="defaultService")
	private DefaultService defaultService;

	@Resource(name="defWatchService")
	private DefWatchService defWatchService;
	
	@Resource(name = "defLifeService")
	private DefLifeServiceImpl defLifeService;
	
	//회원가입후 로그인페이지로 이동시키기
	@RequestMapping("/joinAfter.do")
	public String joinAfter() {
		return "auth/login/Login";
	}
	
	//유효성 검사& 저장하기
	@RequestMapping("/join.do")
	public String joinCheck(JoinFormCommand cmd,Model model,@RequestParam Map map,
							DefaultDTO dfcmd, DefWatchDTO dfcmd2, DefLifeDTO dfcmd3) {
		
		
		if(!validate(cmd,model,map)) {	//유효성 실패
			model.addAttribute("preference",Arrays.toString(cmd.getPreference()));	//체크된거 유지
			return "auth/register/SignUp";
		}
		
		dfcmd.setAll("All");
		dfcmd.setEmail(cmd.getEmail());
		dfcmd2.setWatch("Watch");
		dfcmd2.setEmail(cmd.getEmail());
		dfcmd3.setLife("Life");
		dfcmd3.setEmail(cmd.getEmail());
		
		map.put("preference",(Arrays.toString(cmd.getPreference())));
		//서비스호출
		joinService.memberInsert(map);
		defaultService.defaultInsert(dfcmd);
		defWatchService.defWatchInsert(dfcmd2);
		defLifeService.defLifeInsert(dfcmd3);

		
		return "auth/register/SignUpOk";
	}
	
	//유효성 검증 메소드
	private boolean validate(JoinFormCommand cmd,Model model, Map map) {
		if(cmd.getEmail().trim().equals("")) {
			model.addAttribute("emailError","이메일을 입력하세요");
			return false;
		}
		
		String patternEmail = "^[a-z0-9A-Z._-]{1,25}@[a-z0-9A-Z]{1,12}.[a-zA-Z.]{2,3}$";
		if(!(Pattern.matches(patternEmail, cmd.getEmail()))) {
			model.addAttribute("emailError","이메일형식이 아닙니다");
			return false;
		}
		
		if(cmd.getPassword().trim().equals("") && map.get("loginType")==null) {
			model.addAttribute("passwordError","비밀번호를 입력하세요");
			return false;
		}
		else if(cmd.getPassword().trim().equals("") && (map.get("loginType")=="kakao" || map.get("loginType")=="google")) {
			return true;
		}
		
		String patternPassword = "^[a-z0-9A-Z]{4,20}$";
		if(!(Pattern.matches(patternPassword, cmd.getPassword())) && map.get("loginType")==null) {
			model.addAttribute("passwordError","4자 이상 입력해주세요");
			return false;
		}
		else if(!(Pattern.matches(patternPassword, cmd.getPassword())) && (map.get("loginType")=="kakao" || map.get("loginType")=="google")) {
			return true;
		}
		
		if(cmd.getName().trim().equals("")) {
			model.addAttribute("nameError","이름을 입력하세요");
			return false;
		}
		String patternName = "^[가-힣a-zA-Z]{2,10}$";
		if(!(Pattern.matches(patternName, cmd.getName()))) {
			model.addAttribute("nameError","숫자 혹은 특수문자는 포함될 수 없으며, 두 글자 이상 입력해주세요");
			return false;
		}
		if(cmd.getNickname().trim().equals("")) {
			model.addAttribute("nicknameError","닉네임을 입력하세요");
			return false;
		}
		String patternNickname = "^[가-힣a-zA-Z0-9]{2,20}$";
		if(!(Pattern.matches(patternNickname, cmd.getNickname()))) {
			model.addAttribute("nicknameError","특수문자는 포함될 수 없으며, 두 글자 이상 입력해주세요");
			return false;
		}
		if(cmd.getBirthdate().trim().equals("")) {
			model.addAttribute("birthdateError","생년월일을 선택하세요");
			return false;
		}
		String patternBirthdate = "^(19[0-9][0-9]|20\\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$";
		if(!(Pattern.matches(patternBirthdate, cmd.getBirthdate()))) {
			model.addAttribute("birthdateError","생년월일의 형식이 아닙니다");
			return false;
		}
		/*
		 * else if(!(cmd.getBirthdate().trim().length()==8)) {
		 * model.addAttribute("birthdateError","8자리 숫자만 입력하세요"); return false; } else {
		 * try { Integer.parseInt(cmd.getBirthdate().trim()); } catch(Exception e) {
		 * model.addAttribute("birthdateError","숫자만 입력하세요"); return false; } }
		 */
		if(cmd.getGender() == null) {
			model.addAttribute("genderError","성별을 선택하세요");
			return false;
		}
		if(cmd.getTel().trim().equals("")) {
			model.addAttribute("telError","연락처를 입력하세요");
			return false;
		}
		/*
		 * else { try { Integer.parseInt(cmd.getTel().trim()); } catch(Exception e) {
		 * model.addAttribute("telError","숫자만 입력하세요"); return false; } }
		 */
		String patternTel = "^[0-9]{11}$";
		if(!(Pattern.matches(patternTel, cmd.getTel()))) {
			model.addAttribute("telError","연락처 형식이 아닙니다");
			return false;
		}
		if(cmd.getPreference() == null) {
			model.addAttribute("preferenceError","관심사항을 2개이상 선택해 주세요");
			return false;
		}
		else {
			if(cmd.getPreference().length < 2) {
				model.addAttribute("preferenceError","관심사항을 2개이상 선택해 주세요");
				return false;
			}
		}
		return true;
	}/////
}
