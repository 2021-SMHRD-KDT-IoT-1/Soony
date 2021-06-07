<%@page import="java.util.ArrayList"%>
<%@page import="com.model.CongMember_infoDAO"%>
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
		<title>SoonyCong 마이페이지</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/login.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
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
	</head>
	<body class="homepage is-preload">
	
	<%
		CongMember_infoDTO dto = (CongMember_infoDTO)session.getAttribute("Ldto");
	CongMember_infoDAO dao = new CongMember_infoDAO();
	String id = dto.getId();
	ArrayList<CongMember_infoDTO> list = dao.oneselect(id);
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
								<h1><a href="main.jsp" id="logo">콩순이 유모차</a></h1>
								<hr />
								<p>소중한 순간을 더욱 편하고 안전하게</p>
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
							<br><br><br><h2><a href="#">마이페이지</a></h2>
						</header>
						
						<section id="logmain">
						<div style="width:600px; margin:auto" align="center">
						<!-- form 있던 자리 -->
						<br><br><br>
						<table>
							<tr>
								<td>아이디</td>
								<td><%=list.get(0).getId() %></td>
							</tr>
						
						<!-- 행과 행사이 칸 띄우기 -->
							<tr><td height="20px" colspan="2"></td></tr>
						
							<tr>
								<td>비밀번호</td>
								<td><%=list.get(0).getPw() %></td>
							</tr>
							
							<tr><td height="20px" colspan="2"></td></tr>
						
							<tr>
								<td>전화번호</td>
								<td><%=list.get(0).getTel() %> </td>
							</tr>
							
							<tr><td height="20px" colspan="2"></td></tr>
						
							<tr>
								<td>이름</td>
								<td><%=list.get(0).getName() %> </td>
							</tr>
							
							<tr><td height="20px" colspan="2"></td></tr>
						
							<tr>
								<td>이메일</td>
								<td><%=list.get(0).getEmail() %> </td>
							</tr>
							
							<tr><td height="20px" colspan="2"></td></tr>
						
							<tr>
								<td>닉네임</td>
								<td><%=list.get(0).getNick() %> </td>
							</tr>
						</table>
						<br><br>
						<div align="center">
						<button style="margin-bottom: 10px;"><a href="update.jsp">개인정보수정</a></button>
					    <button><a href="delete.jsp">회원탈퇴</a></button>
					
					</div>
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