<%@page import="com.model.CongMember_infoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.CongMember_infoDAO"%>
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
		<title>SoonyCong 회원정보</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/login.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	<style type="text/css">
	#tb{
	text-align: center;
	margin: 0px;
	border: 2px solid;
	}
	
	</style>
	</head>
	<body class="homepage is-preload">
	<% CongMember_infoDAO dao = new CongMember_infoDAO();
			ArrayList<CongMember_infoDTO> list = dao.select();
			%>
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header" style="height: 10vh; min-height: 20em;">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="main.jsp" id="logo">SoonyCong</a></h1>
								<hr />
								<p>소중한 순간을 더욱 편하고 안전하게</p>
							</header>
							
						</div>

					<!-- 상단바 Nav -->
						<nav id="nav">
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
				<div class="wrapper style2">

						<section id=logmain>
			<div style="width:1200px; margin:auto" align="center">
				<form action="" method="post">
				<br><br>
					<table id="tb" border="1px solid">
					<caption style="margin-bottom: 50px"><h2>회원관리페이지</h2></caption>
						<tr>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>이름</th>
						<th>전화번호</th>
						<th>이메일</th>
						<th>닉네임</th>
						</tr>
						<%for(int i = 0; i<list.size(); i++){ %>
								<tr>
									<td><%=list.get(i).getId() %></td>
									<td><%=list.get(i).getPw() %></td>
									<td><%=list.get(i).getName() %></td>							
									<td><%=list.get(i).getTel() %></td>							
									<td><%=list.get(i).getEmail() %></td>							
									<td><%=list.get(i).getNick() %></td>							
								</tr>
							<%} %>
						
					</table>
			
			<br><br><br>
			
					<div align="center">
						<!-- <a href="../main.jsp" class="button next scrolly" >되돌아가기</a>  -->
					</div>
					</form>
				</div>
			</section>
				<!-- top버튼 -->
							<a id="toTop" href="#top">
						 		<img src="images/top.png" width="60px" height="50px" alt="" >
							</a>
		</div>

			
			
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