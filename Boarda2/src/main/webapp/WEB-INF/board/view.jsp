<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script>
function edit(){
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
		document.from1.action="${path}/board/editBoard.do"
		document.form1.submit();

	
}
function cancel(){
	location.href = "main.jsp";
}
</script>
<body>
<form name="form1" method="post">
<div>
내용 : <textarea id="memo" name="Memo" rows="4" cols="80">${dto.memo }</textarea>
</div>
<div>
작성자 : <input  id="num" name="num" size="80" value="${dto.num}"><br>
</div>
<div>
<input type="hidden" name="num" value="${dto.num }">
<button id="cancel" onclick="edit()">변경</button>
<button id="cancel" onclick="cancel()">취소</button>
</div>
</form>
</body>
</html>