<%@page import="com.model.FreeBoardComentDAO"%>
<%@page import="com.model.FreeBoardComentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.FreeBoardDTO"%>
<%@page import="com.model.FreeBoardDAO"%>
<%@page import="com.model.QNADTO"%>
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
		<link rel="stylesheet" href="assets/css/board.css" />
		
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
		#yes{
		margin-bottom:5px; 
		padding-top: 0px; 
		padding-bottom: 5px; 
		padding-left : 10px;
		padding-right : 10px;
		text-align: center; 
		height: 30px;
		}
		.title {
    font-size: 22px;
    padding: 20px;
    background-color: #EDEDED;
    border-top-left-radius: 8px;
    border-top-right-radius: 8px;
    border-bottom: 2px solid #F2F5F3;
}
		</style>
	</head>
	<%
		CongMember_infoDTO dto = (CongMember_infoDTO)session.getAttribute("Ldto");
		if( dto != null){
			System.out.println("로그인 성공");
			
		}else{
			
			System.out.println("로그아웃 성공");
		}
	
	//get방식으로 보낸 num 받아오기
	int b_num = Integer.parseInt(request.getParameter("b_num"));
	//Sting get_num = request.getParameter("get_num");
	//int num = Integer.parseInt(num);
	
	FreeBoardDAO dao = new FreeBoardDAO();
	FreeBoardDTO bdto = dao.showOne(b_num);
	
	
	//댓글
	FreeBoardComentDAO daoc = new FreeBoardComentDAO();
	
	ArrayList<FreeBoardComentDTO> listco = daoc.FreeBoardComent(b_num);


%>
	
	<body class="no-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header" style="height: 10vh; min-height: 20em;">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="main.jsp" id="logo"><img src="images/boardLogo.png" alt="" /></a></h1>
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
								<h2><a href="#">자유게시판</a></h2>
								
							</header>
							
							<!-- QnAView틀 시작-->
							<div class="title">
										<h1><%= bdto.getTitle() %></h1>
								</div>
								<div class="title">
										<h1>작성자 : <%= bdto.getUsername() %></h1>
									</div>
										
									<br><br>
								<div align="center">
										<img src="uploadFreeboard/<%= bdto.getPhoto() %>"><br>
										<%= bdto.getContent() %>
										</div>
									<br><br>
										<div align="center">
										<%if(dto.getNick().equals(bdto.getUsername())) {%>
										<a href="boardMain.jsp"><button>뒤로가기</button></a>
										<a href="boardUpdate.jsp?b_num=<%= bdto.getNum() %>"><button>수정하기</button></a>
										<a href="DeleteBoardCon?b_num=<%= bdto.getNum() %>"><button>삭제하기</button></a>
										<%} else{ %>
										<a href="boardMain.jsp"><button>뒤로가기</button></a>
										<%} %>
										</div>
								<br><br>
								
								<table>
								
								<tr>
								<td>번호</td>
								<td>작성자</td>
								<td>내용</td>
								<td>날짜</td>
								<td></td>
								
								</tr>
								
								<%for(int i = 0; i< listco.size(); i++){ %>
								<tr>
								<td><%=i+1 %></td>
								<td><%=listco.get(i).getUsername()%></td>
								<td><%=listco.get(i).getContent()%></td>
								<td><%=listco.get(i).getDate()%></td>
								<%if(dto.getNick().equals(listco.get(i).getUsername())) {%>
								<td><a href="FreeBoardDeleteComentCon?c_num=<%=listco.get(i).getCnum() %>&b_num=<%=bdto.getNum()%>"> 삭제</a> </td>
								<%} %>
								<%} %>
								</tr>
								
								</table>
								
								<form action="FreeBoardComentCon?b_num=<%=bdto.getNum() %>" method="post">
								<ul>
								<ul>
								<p>댓글작성하기</p>
								<textarea name="content" rows="5" style="width: 80%; resize:none;"></textarea>
								</ul>
								<ul> 
								<button><a><input type = "submit" value="작성완료"></a></button>
								</ul>
								</ul>
								</form>
							</div>
							<!-- QnAview틀 끝 -->
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