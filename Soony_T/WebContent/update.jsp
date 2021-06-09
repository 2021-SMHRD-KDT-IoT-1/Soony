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
	</head>
	<body class="homepage is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="main.jsp" id="logo">콩순이 유모차</a></h1>
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
			<div style="width:500px; margin:auto" align="center">
				<form action="UpdateCon" method="post">
				<br><br>
					<table>
						
						
						<!-- 행과 행사이 칸 띄우기 -->
						<tr><td height="20px" colspan="2"></td></tr>
						
						<tr>
							<td>비밀번호</td>
							<td><input type="password"  placeholder="PW를 입력하세요" name = "pw"></td>
						</tr>
						
						<!-- 행과 행사이 칸 띄우기 -->
						<tr><td height="20px" colspan="2"></td></tr>
						
						<tr>
							<td>이름</td>
							<td><input type="text"  placeholder="이름을 입력하세요" name = "name"></td>
						</tr>
						
						<!-- 행과 행사이 칸 띄우기 -->
						<tr><td height="20px" colspan="2"></td></tr>
						
						<tr>
							<td>전화번호</td>
							<td><input type="text"  placeholder="전화번호를 입력하세요" name = "tel"></td>
						</tr>
						
						<!-- 행과 행사이 칸 띄우기 -->
						<tr><td height="20px" colspan="2"></td></tr>
						
						<tr>
							<td>닉네임</td>
							<td><input type="text"  placeholder="닉네임을 입력하세요" name = "nick"></td>
						</tr>
						
						<!-- 행과 행사이 칸 띄우기 -->
						<tr><td height="20px" colspan="2"></td></tr>
						
						<tr>
							<td>이메일</td>
							<td><input type="text"  placeholder="이메일을 입력하세요" name = "email"></td>
						</tr>
					</table>
			
			<br><br><br>
			
					<div align="center">
						<input id="joinBtn" type="submit" value="정보수정" class="button fit" >
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