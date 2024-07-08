/**
 * 
 */

function loginCheck() {
	
	if(document.loginForm.mid.value.length == 0) {
		alert("아이디는 필수 입력사항입니다. 다시 확인해 주세요.");
		return false;
	}
	if(document.loginForm.mpw.value.length == 0) {
			alert("비밀번호는 필수 입력사항입니다. 다시 확인해 주세요.");
			return false;
	}
	
	document.loginForm.submit();
				
		
}
