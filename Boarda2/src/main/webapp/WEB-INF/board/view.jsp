<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script>
function View(){
	
	
}
function cancel(){
	location.href = "main.jsp";
}
$(document).ready(function(){
	View();	
});
</sc
</script>
<body>
�̸� : <input type="text" id="name" name="name" size="20"><br>
���� : <input type="text" id="memo" name="Memo" size="50">
<button id="cancel" onclick="cancel()">���</button>
</body>
</html>