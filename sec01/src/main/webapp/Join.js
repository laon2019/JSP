/**
 * 
 */
 function joinform_check(){

//	var name = document.getElementById("uname");
//	var rrnum = document.getElementById("rrnum");	
//	var rrnum2 = document.getElementById("rrnum2");	
//	var uid = document.getElementById("uid");
//	var pwd = document.getElementById("pwd");
//	var repwd = document.getElementById("repwd");
//	var email = document.getElementById("email");
//	var post = document.getElementById("post");
//	var addr = document.getElementById("addr");
//	var phone = document.getElementById("phone");
	
	if(document.frm.name.value ==""){
		alert("이름을 입력하세요.");
		document.frm.name.focus();
		return false;
	};
	
	if(document.frm.rrnum.value ==""){
		alert("주민등록번호 앞자리를 입력하세요");
		document.frm.rrnum.focus();
		return false;
	};
	
	if(document.frm.rrnum2.value ==""){
		alert("주민등록번호 뒷자리를 입력하세요");
		document.frm.rrnum2.focus();
		return false;
	};
	
	if(document.frm.uid.value ==""){
		alert("아이디를 입력하세요.");
		document.frm.uid.focus();
		return false;
	};
	if(document.frm.pwd.value == ""){
		alert("비밀번호를 입력하세요.");
		document.frm.pwd.focus();
		return false;
	};
	var pwdCheck = /^(?=,*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
	if(!pwdCheck.test(document.frm.pwd.value)){
		alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야합니다.");
		document.frm.pwd.focus();
		return false;
	}
	if(document.frm.repwd.value == ""){
		alert("비밀번호를 입력하세요.");
		document.frm.repwd.focus();
		return false;
	};
	if(document.frm.repwd.value != document.frm.pwd.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.frm.repwd.focus();
		return false;
	}
	if(document.frm.email1.value == ""){
		alert("이메일을 입력하세요.");
		document.frm.email1.focus();
		return false;
	};
	if(document.frm.email2.value == ""){
		alert("이메일을 입력하세요.");
		document.frm.email2.focus();
		return false;
	};
	
	if(document.frm.post.value == ""){
		alert("우편번호를 입력하세요.");
		document.frm.post.focus();
		return false;
	};
	if(document.frm.addr.value == ""){
		alert("주소를 입력하세요.");
		document.frm.addr.focus();
		return false;
	};
	if(document.frm.phone.value == ""){
		alert("핸드폰번호를 입력하세요.");
		document.frm.phone.focus();
		return false;
	};
	var reg = /^[0-9]+/g;
	if(!reg.test(document.frm.phone.value)){
		alert("전화번호는 숫자만 입력할 수 있습니다.");
		document.frm.phone.focus();
		return false;
	}
	return true;
	
}