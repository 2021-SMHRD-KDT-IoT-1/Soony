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
								<h1><a href="main.jsp" id="logo">Helios</a></h1>
								<hr />
								<p>Another fine freebie by HTML5 UP</p>
							</header>
							
						</div>

					<!-- 상단바 Nav -->
						<nav id="nav">
							<ul>
								<li><a href="main.jsp">Home</a></li>
								<li>
									<a href="#">Dropdown</a>
									<ul>
										<li><a href="#">Lorem ipsum dolor</a></li>
										<li><a href="#">Magna phasellus</a></li>
										<li><a href="#">Etiam dolore nisl</a></li>
										<li>
											<a href="#">And a submenu &hellip;</a>
											<ul>
												<li><a href="#">Lorem ipsum dolor</a></li>
												<li><a href="#">Phasellus consequat</a></li>
												<li><a href="#">Magna phasellus</a></li>
												<li><a href="#">Etiam dolore nisl</a></li>
											</ul>
										</li>
										<li><a href="#">Veroeros feugiat</a></li>
									</ul>
								</li>
								<li><a href="left-sidebar.html">Left Sidebar</a></li>
								<li><a href="right-sidebar.html">Right Sidebar</a></li>
								<li><a href="no-sidebar.html">No Sidebar</a></li>
							</ul>
						</nav>

				</div>
			 
			<!-- Main -->
				<div class="wrapper style2">

					<article id="main" class="container special">
						<header>
							<br><br><br><h2><a href="#">회원가입</a></h2>
						</header>
						
						<section id="logmain">
						<div style="width:500px; margin:auto" align="center">
						<form action="LoginCon" method="post">
						
				<form action="JoinCon" method="post">
				<br><br>
					<table>
						<tr>
							<td>아이디</td>
							<td>
								<input id="userId" type="text"  placeholder="ID을 입력하세요" name = "id" style="width:calc( 100% / 2); display:inline-block;">
								<input id="idChkBtn" type="button" value="중복확인">
							</td>
						</tr>
						
						<!-- 행과 행사이 칸 띄우기 -->
						<tr><td height="20px" colspan="2"></td></tr>
						
						<tr>
							<td >비밀번호</td>
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
						<input id="joinBtn" type="submit" value="회원가입" class="button fit" >
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