<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script>
$(document).ready(function(){
	$.ajax({
		url:"/list",	
		type:"POST",
		success: function(data){
			if(data){
				
			} else {
				alert("����");
			}
		}
		
	});	
	

}

</script>
<body>
	<c:import url="header.jsp" />
	
	
	<button id="search" onclick="">�˻�</button>
	<button id="save" onclilck="">���</button>
	<c:import url="footer.jsp" />
</body>
</html>