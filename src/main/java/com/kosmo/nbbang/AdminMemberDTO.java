package com.kosmo.nbbang;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class AdminMemberDTO {
	
	private String email;
	private String password;
	private String name;
	private String nickname;
	private String birthdate;
	private String gender;
	private String tel;
	private String usertype;
	private String preference;
	private String authority;
	private String registdate;
	private String originprofile;
	private String profile;
	
}
