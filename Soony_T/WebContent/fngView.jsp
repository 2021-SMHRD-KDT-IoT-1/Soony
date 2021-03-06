<%@page import="com.model.FngDTO"%>
<%@page import="com.model.FngDAO"%>
<%@page import="com.model.AlrDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.AlrDAO"%>
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
		<title>SoonyCong 유모차지문관리</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/stroller.css" />
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
		
		FngDAO dao = new FngDAO();
		   ArrayList<FngDTO> li = dao.showFng();
	%>
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header" style="height: 10vh; min-height: 20em;">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="boardMain.jsp" id="logo"><img src="images/fngLogo.png" alt="" /></a></h1>
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
										<li><a href="qnaMain.jsp">Q&A</a></li>
									</ul>
								</li>
							</ul>
						</nav>

				</div>

			 
			<!-- Main -->
				<div class="wrapper style2">

					<article id="main" class="container special">
						<header>
							<br><br><br><h2><a href="#">지문</a></h2>
						</header>
						
						<section id="logmain">
						<div style="width:500px; margin:auto" align="center">
						<form action="StrollerCon" method="post">
						<br><br><br>
						<table style="text-align: center;">
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
						<br><br>
						<div align="center">
						<a href="main.jsp"><button id="writer">홈으로가기</button></a>
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
						
			<script type="text/javascript">
	
		
			// 정보 보내고 받기
			// ajax 인코딩이 UTF-8에 주위해야함
			function numCheck() {
	
				// input에 있는 정보 가져와서 변수에 저장
				let str_num = $('#str_num').val();
	
	
				// ajax 실행 부분
				$.ajax({
					url : 'StrollerCheck',
					type : 'post',
					data : {
						'str_num' : str_num
					},
					success : function(data) {
	
						
						if (data == 'true') {
							alert('유모차 고유번호 등록 성공');
						}else{
							alert('유모차 번호가 중복됩니다!');								
						}
						
						//location.window.href = "main.jsp";
					},
					error : function() {
						alert('조회 실패');
					}
				});
	
			}
			
			</script>
			

	</body>
</html>