/**
 * 
 */
let social = {
	kakao: {
		data: { key: '315727d24edb4c7412171ffec5f8d047' },
		init: function() {
			Kakao.init(social.kakao.data.key);
		},
		login: function() {
			Kakao.Auth.login({
				success: function(response) {
					console.log("카카오 로그인 성공", response);
					social.kakao.info();
				},
				fail: function(error) {
					console.log("카카오 로그인 실패", error);
				},
			})
		},
		info: function() {
			Kakao.API.request({
				url: '/v2/user/me',
				success: function(response) {
					console.log("카카오 정보 불러오기 성공 ", response)
					let userInfo = {
						type: 'kakao',
						id: response.id,
						nm: response.properties.nickname,
						email: response.kakao_account.email,

					};
					socialGetInfo(userInfo);
					setTimeout(social.kakao.logout, 500);
				},
				fail: function(error) {
					console.log("카카오 정보 불러오기 오류 ", error);
				},
			})
		},
		logout: function() {
			if (Kakao.Auth.getAccessToken()) {
				Kakao.API.request({
					url: '/v1/user/unlink',
					success: function(response) {
						console.log("카카오 로그아웃 성공", response);
					},
					fail: function(error) {
						console.log("카카오 로그아웃 실패", error);
					},
				})
				Kakao.Auth.setAccessToken(undefined)
			}
		},
	},
	google: {
		data: {
			clientId: '525611982826-fkkunrkjsnk4l6kot2df7sqrljl0akbq.apps.googleusercontent.com',
			apikey: 'AIzaSyAjaR7CjleXxncouVetvcOChc_JVAPJNnI',
		},
		init: function(elId) {
			gapi.load('auth2', function() {
				gapi.auth2.getAuthInstance({ client_id: social.google.data.clientId });
				let options = new gapi.auth2.SigninOptionsBuilder();
				options.setPrompt('select_account');
				options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
				gapi.auth2.getAuthInstance().attachClickHandler(elId, options, social.google.loginSuccess, social.google.logoutFail);
			});
		},
		loginSuccess: function(googleUser) {
			console.log("구글 로그인 성공", googleUser);
			let profile = googleUser.getBasicProfile();
			let userInfo = {
				type: 'google',
				id: profile.getId(),
				nm: profile.getName(),
				email: profile.getEmail(),
			};
			socialGetInfo(userInfo);
			setTimeout(social.google.logout, 500);
		},
		logoutFail: function(error) {
			console.log("구글 로그인 실패", error);
		},
		logout: function() {
			let auth2 = gapi.auth2.getAuthInstance();
			auth2.signOut().then(function() {
				console.log('구글 로그아웃 성공 ');
			});
		}
	}
}