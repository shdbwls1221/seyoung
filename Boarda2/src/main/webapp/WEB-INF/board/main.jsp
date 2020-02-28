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
<title>�Խ���</title>
</head>
<script>
function Add(){
	location.href = "add";
}
function BoardGrid(){
		$('#boardTable').dataTable({
			"columnDefs":[{  //�÷��� ���� ������ -�� ��ü���ִ� ��
				"defaultContent": "-",
				"targets": "_all"
			}],
         pageLength: 3, //������ ����
         bPaginate: true, //����¡ Ȱ��ȭ
         bLengthChange: true, 
         lengthMenu : [ [ 3, 5, 10, -1 ], [ 3, 5, 10, "All" ] ],
         bAutoWidth: false,
         processing: true,
         bServerSide: true,
         searching: true,
         ajax : {
             "url":"/getList.do",
             "type":"GET",
             dataType:"JSON"
         },
         columns : [
             {data: "NUMBER"},
             {data: "MEMO"},
             {data: "USERNAME"}
         ]
		
     });
	
}
function search(){
	 $('#boardTable').dataTable({
		 "columnDefs":[{            //�÷��� ���� ������ -�� ��ü���ִ� ��
				"defaultContent": "-",
				"targets": "_all"
			}],
         pageLength: 3,
         bPaginate: true,
         bLengthChange: true,
         lengthMenu : [ [ 3, 5, 10, -1 ], [ 3, 5, 10, "All" ] ],
         bAutoWidth: false,
         processing: true,
         serverSide: false,
         searching: true,
         ajax : {
             "url":"/getList.do",
             "type":"GET",
             dataType:"JSON"
         },
         columns : [
             {data: "Number"},
             {data: "Memo"},
             {data: "UserName"}
         ]

     });
}
$(document).ready(function(){
	BoardGrid();	
});
</script>
<body>
	<c:import url="header.jsp" />
	<table id="boardTable" class="table table-bordered table-hover table-sm" >
    <colgroup>
	<col width="20%"/>
	<col width="*"/>
	<col width="20%"/>
	</colgroup>
    <thead>
        <tr>
            <th>�۹�ȣ</th>
            <th>����</th>
            <th>�ۼ���</th>
            
        </tr>
    </thead>
</table>
	<!-- <input type="text" id="search" name="search" size="20"> -->
	<button id="search" onclick="location='/search">�˻�</button>
	<button id="add" onclick="location='/add'">���</button>
	<c:import url="footer.jsp" />
</body>
</html>