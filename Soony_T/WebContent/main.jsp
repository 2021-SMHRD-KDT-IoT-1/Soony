
<%@page import="java.util.ArrayList"%>
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
		<title>콩순이 유모차</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main2.css" />
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

.tip {
	vertical-align: middle;
}

tbody tr:nth-child(2n) {
	background-color: #f0f4f4;
}

table {
	width: 100%;
	border-top: 1px solid #e1e6e6;
	border-collapse: collapse;
	font-size: 20px;
}

th, td {
	border-bottom: 1px solid #e1e6e6;
	padding: 10px;
}
</style>

	</head>
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
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="main.jsp" id="logo">콩순이 유모차</a></h1>
								<hr />
								<p>소중한 순간을 더욱 편하고 안전하게</p>
							</header>
							<footer>
								<a href="#banner" class="button circled scrolly">Start</a>
							</footer>
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
					    <%}%>
					    <%}else{%>
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
			 
			<!-- Banner -->
				<section id="banner">
					<header>
						<h2>편안함과 안전을 추구하는<strong>콩순이 유모차</strong>입니다.</h2>
						<p>
							콩순이 유모차는 언제나, 어디서나 귀하의 가정에서 소중한 아이와 <br>안전하고 편안한 추억을 만들기 위해서 힘쓰겠습니다.
						</p>
					</header>
				</section>

				<!-- 제품설명 및 후가 Carousel -->
				<section class="carousel">
					<div class="reel">

						<article>
							<a href="#" class="image featured"><img src="images/u1.png" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="images/u5.png" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="images/u3.png" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="images/u4.png" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="images/u2.png" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="images/re1.png" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="images/re2.png" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="images/re3.png" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="images/re4.png" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="images/re5.png" alt="" /></a>
						</article>


					</div>
				</section>

			<!-- Main -->
				<div class="wrapper style2">

					<article id="main" class="container special">
						<header>
							<br><br><br><br>
							<h2><a href="#">유모차 종류</a></h2>
						</header>
						<a class="image featured"><img src="images/sa.png" alt="" /></a>
						
						<header>
							<br>
							<h2>유모차 선택 TIP</h2>
						</header>
						<table>
							<tbody>
								<tr>
									<td scope="row" class="icon">
										<span class="rounded-circle">
											<img src="images/ico_tip_1.png">
										</span>
									</td>
									<td class="tip">　바퀴의 크기</td>
									<td class="tip">　바퀴의 지름이 클수록 장애물을 쉽게 넘을 수 있고 흔들림이 적습니다.</td>
								</tr>
								<tr>
									<td scope="row" class="icon">
										<span class="rounded-circle">
											<img src="images/ico_tip_2.png">
										</span>
									</td>
									<td class="tip">　서스펜션</td>
									<td class="tip">　노면의 충격이 아이에게 전달되지 않게 충격을 흡수하는 장치로 승차감과 안정성에 영향을줍니다.</td>
								</tr>
								<tr>
									<td scope="row" class="icon">
										<span class="rounded-circle">
											<img src="images/ico_tip_3.png">
										</span>
									</td>
									<td class="tip">　양대면</td>
									<td class="tip">　핸들이나 시트 방향을 전환하여 보호자와 마주볼 수 있는 기능</td>
								</tr>
								<tr>
									<td scope="row" class="icon">
										<span class="rounded-circle">
											<img src="images/ico_tip_4.png">
										</span>
									</td>
									<td class="tip">　등받이각도</td>
									<td class="tip">　175도부터 95도까지 아이성장에 따라 조절 가능</td>
								</tr>
								<tr>
									<td scope="row" class="icon">
										<span class="rounded-circle">
											<img src="images/ico_tip_5.png">
										</span>
									</td>
									<td class="tip">　차양막</td>
									<td class="tip">　차양막 길이와 단계별 조절이 가능한지 체크</td>
								</tr>
								<tr>
									<td scope="row" class="icon">
										<span class="rounded-circle">
											<img src="images/ico_tip_6.png">
										</span>
									</td>
									<td class="tip">　장바구니</td>
									<td class="tip">　크고 튼튼해야 이동시 수납이 편리합니다.</td>
								</tr>
								<tr>
									<td scope="row" class="icon">
										<span class="rounded-circle">
											<img src="images/ico_tip_7.png">
										</span>
									</td>
									<td class="tip">　트래블시스템</td>
									<td class="tip">　신생아용 바구니 카시트를 유모차에 장착해서 사용할 수 있는 기능</td>
								</tr>
								<tr>
									<td scope="row" class="icon">
										<span class="rounded-circle">
											<img src="images/ico_tip_8.png">
										</span>
									</td>
									<td class="tip">　폴딩 or 셀프스탠딩</td>
									<td class="tip">　유모차를 쉽게 접고 펼수 있는지와 수납 가능한 셀프 스탠딩 여부</td>
								</tr>
								<tr>
									<td scope="row" class="icon">
										<span class="rounded-circle">
											<img src="images/ico_tip_9.png">
										</span>
									</td>
									<td class="tip">　가볍고 컴팩트한 사이즈</td>
									<td class="tip">　엄마가 핸들링하기 편한 무게와 사이즈</td>
								</tr>
							</tbody>
						</table>
						
					</article>
				</div>

				<!-- top버튼 -->
				<a id="toTop" href="#top">
					<img src="images/top.png" width="60px" height="50px" alt="" >
				</a>

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