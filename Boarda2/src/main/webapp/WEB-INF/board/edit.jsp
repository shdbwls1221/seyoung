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

}
function cancel(){
	location.href = "/cancel";
}
</script>
<body>
글번호:<input type="text" id="number" name="number" size="20" editable="false">
이름 : <input type="text" id="name" name="name" size="20">
비밀번호 : <input type="password" id="password" name="password" size="20">
내용 : <input type="text" id="memo" name="Memo" size="50">

<button id="edit" >변경</button>
<button id="cancel" onclick="cancel()">취소</button>
</body>
</html>