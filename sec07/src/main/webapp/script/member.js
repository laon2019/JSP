/**
 * 
 */
 function loginCheck(){
	if(document.frm.userid.value.length ==0){
		alert("아이디를 넣어주세요.");
		frm.userid.focus();
		return false;
	}
	if(document.frm.pwd.value ==""){
		alert("비밀번호는 반드시 입력해야 합니다.");
		from.pwd.focus();
		return false;
	}
	return true;
}