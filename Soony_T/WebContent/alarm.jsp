<%@page import="com.model.AlrDTO"%>
<%@page import="com.model.AlrDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html> 
<head> 
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
	String a = request.getParameter("cmd");
	System.out.println(a); 
	
	AlrDAO dao = new AlrDAO();
	dao.count();
	ArrayList<AlrDTO> list = dao.showAlr();
//	int sum = 0;
	
	%>

	<div id="board">
		<table id="list">
			<tr>
				<td>번호</td>
				<td>날짜</td>
			</tr>
			
		
		
		<%
		for(int i =0;i<list.size();i++){
		%>

		<tr>
			<td><%=list.get(i).getAlr_num()%></td>
			<td><%=list.get(i).getSys_date()%></td>
			<%
				}
			%>
		
		</tr> 
	</table>

	<a href="main.jsp"><button id="writer">홈으로가기</button></a>
	</div>


	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
</html>