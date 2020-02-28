<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>글 추가</title>
</head>
<script>
function save(){
 $.ajax({
	 url: "/addBoad.do",
	 type: "POST",
	 dataType: "json",
	 data:{
		 Username:$('#name').val(),
		 Password:$('#password').val(),
		 Memo:$('#memo').val()
	 }
	 success: function(data){
		 alert('등록');
	 }
 });
	
}
function cancel(){
	location.href = "/cancel";
}
</script>
<body>
이름 : <input type="text" id="name" name="name" size="20">
<br>비밀번호 : <input type="password" id="password" name="password" size="20">
<br>내용 : <input type="text" id="memo" name="Memo" size="50">

<button id="save" >등록</button>
<button id="cancel" onclick="cancel();">취소</button>
</body>
</html>