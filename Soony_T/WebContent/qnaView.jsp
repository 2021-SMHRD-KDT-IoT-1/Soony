<%@page import="com.model.RQNADTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.RQNADAO"%>
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
		<title>SoonyCong Q&A</title>
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

.title {
    font-size: 22px;
    padding: 20px;
    background-color: #f2f2db;
    border-top-left-radius: 8px;
    border-top-right-radius: 8px;
    border-bottom: 2px solid #F2F5F3;
}


</style>


</head>
	<%
	CongMember_infoDTO dto = (CongMember_infoDTO) session.getAttribute("Ldto");
	if (dto != null) {
		System.out.println("로그인 성공");

	} else {

		System.out.println("로그아웃 성공");
	}

	//get방식으로 보낸 num 받아오기
	int q_num = Integer.parseInt(request.getParameter("q_num"));
	//Sting get_num = request.getParameter("get_num");
	//int num = Integer.parseInt(num);

	QNADAO dao = new QNADAO();
	QNADTO qdto = dao.showOne(q_num);
	

	RQNADAO daor = new RQNADAO();
	ArrayList<RQNADTO> listr = daor.QNAComent(q_num);
	%>
	
	<body class="no-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header" style="height: 10vh; min-height: 20em;">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="qnaMain.jsp" id="logo"><img src="images/qnaLogo.png" alt="" /></a></h1>
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
							
							<!-- QnAView틀 시작-->
							
							<!-- 글 제목 -->
							
								<div class="title">
									<h1>　<%= qdto.getQ_title() %></h1>
								</div>
								<div class="title">
									<h1>　작성자 : <%= qdto.getQ_username() %>　　　　　　　　　　　작성일 : <%= qdto.getDate()%></h1>
								</div>
								
							<!-- 글 내용 -->
								<br><br>
								<div align="center">
									<img src="upload/<%= qdto.getQ_img() %>"><br>
										<%= qdto.getQ_content() %>
								</div>
								<br><br>
											
									<div align="center">
										<%if(dto.getNick().equals(qdto.getQ_username())) {%>
										<a href="qnaMain.jsp"><button>뒤로가기</button></a>
										<a href="qnaUpdate.jsp?q_num=<%= qdto.getQ_num() %>"><button>수정하기</button></a>
										<a href="QnaDeleteCon?q_num=<%= qdto.getQ_num() %>"><button>삭제하기</button></a>
										<%} else{ %>
										<a href="qnaMain.jsp"><button>뒤로가기</button></a>
										<%} %>
									</div>	
									<br><br>
									
							<!-- 답변 작성 -->		
								
								<table>
								
								<tr>
								<td>번호</td>
								<td>작성자</td>
								<td>내용</td>
								<td>날짜</td>
								<td></td>
								
								</tr>
								
								<%for(int i = 0; i< listr.size(); i++){ %>
								<tr>
								<td><%=i+1 %></td>
								<td><%=listr.get(i).getUsername()%></td>
								<td><%=listr.get(i).getContent()%></td>
								<td><%=listr.get(i).getDate()%></td>
								<%if(dto.getNick().equals(listr.get(i).getUsername())) {%>
								<td><a href="QnaDeleteComentCon?rq_num=<%=listr.get(i).getRqnum() %>&q_num=<%=qdto.getQ_num()%>"> 삭제</a> </td>
								<%} %>
								<%} %>
								</tr>
								
								</table>
								<%if(dto.getId().equals("admin")) {%>
								<form action="QnaBoardComentCon?q_num=<%=qdto.getQ_num() %>" method="post">
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
								<%} %>
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