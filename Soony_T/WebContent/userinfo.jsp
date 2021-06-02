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
		<title>SoonyCong 회원가입</title>
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
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="main.jsp" id="logo">Helios</a></h1>
								<hr />
								<p>Another fine freebie by HTML5 UP</p>
							</header>
							
						</div>

					<!-- 상단바 Nav -->
						<nav id="nav">
							<ul>
								<li><a href="main.jsp">전체보기</a></li>
								<li>
									<a href="#">유모차</a>
									<ul>
										<li><a href="#">유모차 등록</a></li>
										<li><a href="#">지문 관리</a></li>
										<li><a href="#">방범 알림</a></li>
									</ul>
								</li>
								<li><a href="sidebar.jsp">자유게시판</a></li>
								<li>
									<a href="#">고객 지원</a>
									<ul>
										<li><a href="sidebar.jsp">자주 묻는 질문</a></li>
										<li><a href="sidebar.jsp">QnA</a></li>
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
		</div>

			
			
								<!-- Contact -->
									<section class="contact">
										<header>
											<h3>Nisl turpis nascetur interdum?</h3>
										</header>
										<p>Urna nisl non quis interdum mus ornare ridiculus egestas ridiculus lobortis vivamus tempor aliquet.</p>
										<ul class="icons">
											<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
											<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
											<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
											<li><a href="#" class="icon brands fa-pinterest"><span class="label">Pinterest</span></a></li>
											<li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
											<li><a href="#" class="icon brands fa-linkedin-in"><span class="label">Linkedin</span></a></li>
										</ul>
									</section>

								<!-- Copyright -->
									<div class="copyright">
										<ul class="menu">
											<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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

	</body>
</html>