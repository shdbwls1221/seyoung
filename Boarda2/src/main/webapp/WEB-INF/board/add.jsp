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
			
			document.form1.submit(); //�Է��� �����͸� ����
}
function cancel(){
	location.href = "/cancel";
}
</script>
<body>
<form name="form1" method="post" action="{path}/board/addBoard.do">
<div>
���� : <textarea id="memo" name="Memo" rows="4" cols="80"></textarea>
</div>
<div>
�ۼ��� : <input  id="num" name="num" size="80"><br>
</div>
<div>
�н����� : <input  id="password" name="password" size="80"><br>
</div>
<div style="width:650px; text-align: center;">
<button id="cancel" onclick="save()">���</button>
<button id="cancel" onclick="cancel()">���</button>
</div>
</form>
</html>