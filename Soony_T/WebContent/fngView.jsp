<%@page import="com.model.FngDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.CongMember_infoDTO"%>
<%@page import="com.model.FngDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% FngDAO dao = new FngDAO();
   CongMember_infoDTO dto = (CongMember_infoDTO)session.getAttribute("Ldto");
   ArrayList<FngDTO> li = dao.showFng();
%>
     <div id="fng">
     	<table id="list">
     		<tr>
     			<td>번호</td>
     			<td>이름</td>
     			<td>삭제</td>
     		</tr>
     		<%for(int i = 0; i<li.size(); i++) { %>
     			<tr>
     			<td><%=li.get(i).getFng_num()  %></td>
     			<td><%=li.get(i).getFng_name()  %></td>
     			<td><%if(dto!=null) {%>
     				<a href = "FngDeleteCon?num=<%=li.get(i).getFng_num() %>">삭제</a>
     				<%} %></td>
     				
     			</tr>
     		<%} %>
     	</table>
     </div>
</body>
</html>