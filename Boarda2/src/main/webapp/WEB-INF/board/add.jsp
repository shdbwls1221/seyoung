<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�� �߰�</title>
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
		 alert('���');
	 }
 });
	
}
function cancel(){
	location.href = "/cancel";
}
</script>
<body>
�̸� : <input type="text" id="name" name="name" size="20">
<br>��й�ȣ : <input type="password" id="password" name="password" size="20">
<br>���� : <input type="text" id="memo" name="Memo" size="50">

<button id="save" >���</button>
<button id="cancel" onclick="cancel();">���</button>
</body>
</html>