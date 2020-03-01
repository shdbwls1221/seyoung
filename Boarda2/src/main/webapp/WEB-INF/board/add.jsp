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
		 var Username:$('#name').val(),
		 var Password:$('#password').val(),
		 var Memo:$('#memo').val()
		 if(Username == ""){
				alert("작성자를 입력하세요");
				documnet.form1.Username.focus();
			} else if(Password == ""){
				alert("패쓰워드를 입력하세요");
				documnet.form1.Password.focus();
			 } else if(Memo == ""){
					alert("내용을 입력하세요");
					documnet.form1.Memo.focus();
				 }
			
			document.form1.submit(); //입력한 데이터를 전송
}
function cancel(){
	location.href = "/cancel";
}
</script>
<body>
<form name="form1" method="post" action="{path}/board/addBoard.do">
<div>
내용 : <textarea id="memo" name="Memo" rows="4" cols="80"></textarea>
</div>
<div>
작성자 : <input  id="num" name="num" size="80"><br>
</div>
<div>
패스워드 : <input  id="password" name="password" size="80"><br>
</div>
<div style="width:650px; text-align: center;">
<button id="cancel" onclick="save()">등록</button>
<button id="cancel" onclick="cancel()">취소</button>
</div>
</form>
</html>