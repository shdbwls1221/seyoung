<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

  <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시판</title>
</head>
<script>
function Add(){
	location.href = "add";
}
</script>
<body>
	<c:import url="header.jsp" />
	<table border="1" width="600px" >
    <colgroup>
	<col width="20%"/>
	<col width="*"/>
	<col width="20%"/>
	</colgroup>
    <thead>
        <tr>
            <th>글번호</th>
            <th>내용</th>
            <th>작성자</th>        
        </tr>
        <c:forEach var="row" items="{list}">
        <tr>
        <td>${row.num}</td>
        <td><a href="${path}/board/view.do?num=${row.num}">${row.memo}</a></td>
        <td>${row.userName}</td>
        </tr>
        </c:forEach>
    </thead>
</table>
	<!-- <input type="text" id="search" name="search" size="20"> -->
	<button id="search" onclick="location='/search">검색</button>
	<button id="add" onclick="location='/add'">등록</button>
	<c:import url="footer.jsp" />
</body>
</html>