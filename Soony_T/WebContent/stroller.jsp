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
		<title>SoonyCong 유모차등록</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/login.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
<style type="text/css">
		#nav > div {
		text-align : right;
		margin-right: 50px;
		margin-bottom: 3px;
		}
		#nav > div > button{
		width: 100px;
		padding-left: 0px;
		padding-right: 0px;
		}
		
		</style>
	<body class="homepage is-preload">
	<%
		CongMember_infoDTO dto = (CongMember_infoDTO)session.getAttribute("Ldto");
		if( dto != null){
			System.out.println("로그인 성공");
			
		}else{
			
			System.out.println("로그아웃 성공");
		}
	%>
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header" style="height: 10vh; min-height: 20em;">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="main.jsp" id="logo">Helios</a></h1>
								<hr />
								<p>Another fine freebie by HTML5 UP</p>
							</header>
						
						</div>

					<!-- 상단바 Nav -->
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
										<li><a href="qnaMain.jsp">QnA</a></li>
									</ul>
								</li>
							</ul>
						</nav>

				</div>

			 
			<!-- Main -->
				<div class="wrapper style2">

					<article id="main" class="container special">
						<header>
							<br><br><br><h2><a href="#">유모차 등록</a></h2>
						</header>
						
						<section id="logmain">
						<div style="width:500px; margin:auto" align="center">
						<form action="StrollerCon" method="post">
						<br><br><br>
						<table>
							<tr>
								<td>유모차 고유번호</td>
								<td><input type="text" placeholder="고유번호 입력" name="str_num" ></td>
							</tr>
						
						<!-- 행과 행사이 칸 띄우기 -->
							<tr><td height="20px" colspan="2"></td></tr>
						
							
						</table>
						<br><br>
						<div align="center">
						<input type="submit" value="입력완료" class="button">
					</div>
				</form>
			</div>
		</section>
	</div>
						
						
					</article>
						<!-- top버튼 -->
							<a id="toTop" href="#top">
						 		<img src="images/top.png" width="60px" height="50px" alt="" >
							</a>

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
			<script src="assets/js/top.js"></script>
			

	</body>
</html>