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
			alert("�ۼ��ڸ� �Է��ϼ���");
			documnet.form1.Username.focus();
		} else if(Password == ""){
			alert("�о����带 �Է��ϼ���");
			documnet.form1.Password.focus();
		 } else if(Memo == ""){
				alert("������ �Է��ϼ���");
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
���� : <textarea id="memo" name="Memo" rows="4" cols="80">${dto.memo }</textarea>
</div>
<div>
�ۼ��� : <input  id="num" name="num" size="80" value="${dto.num}"><br>
</div>
<div>
<input type="hidden" name="num" value="${dto.num }">
<button id="cancel" onclick="edit()">����</button>
<button id="cancel" onclick="cancel()">���</button>
</div>
</form>
</body>
</html>