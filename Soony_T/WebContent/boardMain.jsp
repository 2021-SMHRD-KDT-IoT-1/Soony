<%@page import="com.model.FreeBoardDTO"%>
<%@page import="com.model.FreeBoardDAO"%> 
<%@page import="com.model.QNADTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.QNADAO"%> 
<%@page import="com.model.CongMember_infoDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Helios by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>SoonyCong 자유게시판</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/qna.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	<style type="text/css">
#nav>div {
	text-align: right;
	margin-right: 50px;
	margin-bottom: 3px;
}

#nav>div>button {
	width: 100px;
	padding-left: 0px;
	padding-right: 0px;
}

/*테이블 css*/
table {
	width: 100%;
	border-top: 1px solid #f0f4f4;
	border-collapse: collapse;
}

th, td {
	border-bottom: 1px solid #f0f4f4;
	padding: 10px;
	text-align: center;
}
</style>
	</head>
	
	<body class="no-sidebar is-preload">
	<%
		CongMember_infoDTO dto = (CongMember_infoDTO)session.getAttribute("Ldto");
		if( dto != null){
			System.out.println("로그인 성공");
		}else{
			System.out.println("로그아웃 성공");
		}
	
	FreeBoardDAO dao = new FreeBoardDAO();
	ArrayList<FreeBoardDTO> list = dao.FreeBoard();
	if( list != null){
		System.out.println("성공");
	}else{
		System.out.println("실패");
	}
	
	%>
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header" style="height: 10vh; min-height: 20em;">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="main.jsp" id="logo">콩순이 유모차</a></h1>
							</header>
						</div>

					<!-- Nav -->
						<nav id="nav" style="padding: 2em 0 1.5em 0;">
						
					    <div>
					    <%if(dto != null){ %>
					    
					     <%if(dto.getId().equals("admin")){ %>
					     <button><a href="LogoutCon">로그아웃</a></button>
					     <button><a href="userinfo.jsp">회원정보</a></button>
					    <%}else{ %>
					    <button><a href="LogoutCon">로그아웃</a></button>
					    
					    <button><a href="mypage.jsp">마이페이지</a></button>
					    <%} %>
					    <%}else{ %>
					   <button><a href="login.jsp">로그인</a></button>
					   <button><a href="join.jsp" >회원가입</a></button>
					    <%} %>
					    
					     </div> 
					    
						<ul>
								<li><a href="main.jsp">전체보기</a></li>
								<li>
									<a href="#">유모차</a>
									<ul>
										<li><a href="stroller.jsp">유모차 등록</a></li>
										<li><a href="fngView.jsp">지문 관리</a></li>
										<li><a href="alarm.jsp">방범 알림</a></li>
									</ul>
								</li>
								<li><a href="boardMain.jsp">자유게시판</a></li>
								<li>
									<a href="#">고객 지원</a>
									<ul>
										<li><a href="faqMain.jsp">자주 묻는 질문</a></li>
										<li><a href="qnaMain.jsp">Q&A</a></li>
									</ul>
								</li>
							</ul>
						</nav>

				</div>

			<!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
							<header>
								<h2><a href="#">자유게시판</a></h2><br><br>
							</header>
							
							<!-- QnA틀 -->
							<div id="board">
								<table id = "list">
									<tr bgcolor = "#f0f4f4">
										<td>번호</td>
										<td width = "55%">제목</td>
										<td>작성자</td>
										<td>시간</td>
									</tr>
									
									<%for(int i=0; i<list.size();i++){ %>
										<tr>
											<td> <%=i+1 %> </td>
											<td> <a href="boardView.jsp?b_num=<%= list.get(i).getNum() %>"><%=list.get(i).getTitle() %> </a></td>
											<td> <%=list.get(i).getUsername() %> </td>
											<td> <%=list.get(i).getDate() %> </td>
										</tr>
									<%} %>	
								</table>
								<table >
								<tr >
										<td align="right">
								<a href="main.jsp"><button id="writer">홈으로가기</button></a>
								<a href="boardWrite.jsp"><button id="writer">작성하러가기</button></a>
								</td>
										</tr>
									</table>
							</div>
							<!-- QnA틀 끝 -->
						</article>
						<hr />
					</div>
											<!-- top버튼 -->
							<a id="toTop" href="#top">
						 		<img src="images/top.png" width="60px" height="50px" alt="" >
							</a>
				</div>

			<!-- Footer -->
				<div id="footer">
					<div class="container">
						
						<div class="row">
							<div class="col-12">

								<!-- Contact -->
									<section class="contact">
										<header>
											<h3>(주) 콩순이 유모차 대표 : 김민지<br> 주소 : 광주 동구 예술길 31-15 3층 / 지능형 ioT 융합SW 전문가과정(NCS)</h3>
										</header>
										<p></p>
										
									</section>

								<!-- Copyright -->
									<div class="copyright">
										<ul class="menu">
											<li>&copy;콩순이 유모차</li><li>Design: HTML5 UP && 김민지, 김선웅</li>
										</ul>
									</div>

							</div>

						</div>
					</div>
				</div>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script src="assets/js/top.js"></script>

	</body>
</html>