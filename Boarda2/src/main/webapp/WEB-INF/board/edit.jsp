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
�۹�ȣ:<input type="text" id="number" name="number" size="20" editable="false">
�̸� : <input type="text" id="name" name="name" size="20">
��й�ȣ : <input type="password" id="password" name="password" size="20">
���� : <input type="text" id="memo" name="Memo" size="50">

<button id="edit" >����</button>
<button id="cancel" onclick="cancel()">���</button>
</body>
</html>