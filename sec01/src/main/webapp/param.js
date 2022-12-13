/**
 * 
 */
 function check(){
	
	console.log("check()");
	if(document.frm.id.value ==""){
		alert("이름을 입력해주세요.");
		document.frm.id.focus();
		return false;
	} else if(document.frm.age.value == ""){
		alert("나이를 입력해주세요.");
		document.frm.age.focus();
		return false;
	} else if(isNaN(document.frm.age.value)){
		alert("나이는 숫자로 입력해주세요.");
		document.frm.age.focus();
	} else{
		return true;
	}
}