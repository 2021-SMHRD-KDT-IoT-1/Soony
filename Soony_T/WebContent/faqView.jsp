<%@page import="com.model.FAQDTO"%>
<%@page import="com.model.FAQDAO"%>
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
		<title>FAQ</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/qna.css" />
		
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
			System.out.println("�α��� ����");
			
		}else{
			
			System.out.println("�α׾ƿ� ����");
		}
	
	//get������� ���� num �޾ƿ���
	int f_num = Integer.parseInt(request.getParameter("f_num"));
	//Sting get_num = request.getParameter("get_num");
	//int num = Integer.parseInt(num);
	
	FAQDAO dao = new FAQDAO();
	FAQDTO bdto = dao.showOne(f_num);
	
	ArrayList<FAQDTO> list = dao.showFAQ();
	
%>
	
	<body class="no-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header" style="height: 10vh; min-height: 20em;">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="main.jsp" id="logo">����� ������</a></h1>
							</header>
						</div>

					<!-- Nav -->
						<nav id="nav" style="padding: 2em 0 1.5em 0;">
						
					    <div>
					    <%if(dto != null){ %>
					    
					     <%if(dto.getId().equals("admin")){ %>
					     <button><a href="LogoutCon">�α׾ƿ�</a></button>
					     <button><a href="userinfo.jsp">ȸ������</a></button>
					    <%}else{ %>
					    <button><a href="LogoutCon">�α׾ƿ�</a></button>
					    
					    <button><a href="mypage.jsp">����������</a></button>
					    <%} %>
					    <%}else{ %>
					   <button><a href="login.jsp">�α���</a></button>
					   <button><a href="join.jsp" >ȸ������</a></button>
					    <%} %>
					    
					     </div> 
					    
						<ul>
								<li><a href="main.jsp">��ü����</a></li>
								<li>
									<a href="#">������</a>
									<ul>
										<li><a href="stroller.jsp">������ ���</a></li>
										<li><a href="fngView.jsp">���� ����</a></li>
										<li><a href="alarm.jsp">��� �˸�</a></li>
									</ul>
								</li>
								<li><a href="boardMain.jsp">�����Խ���</a></li>
								<li>
									<a href="#">�� ����</a>
									<ul>
										<li><a href="faqMain.jsp">���� ���� ����</a></li>
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
								<h2><a href="#">FAQ</a></h2><br>
								
							</header>
							
							<!-- QnAViewƲ ����-->
							<div class="title">
										<%= bdto.getTitle() %>
									</div>
										<div class="title">
										<h1>�ۼ��� : ������</h1>
									</div>
									<br><br>
										<div class="title">
										<%= bdto.getContent() %>
										</div>
									<br><br>
										<div align="center">
										<%if(dto.getId().equals("admin")) {%>
										<a href="faqMain.jsp"><button>�ڷΰ���</button></a>
										<a href="faqUpdate.jsp?f_num=<%= bdto.getNum() %>"><button>�����ϱ�</button></a>
										<a href="DeleteFAQCon?f_num=<%= bdto.getNum() %>"><button>�����ϱ�</button></a>
										<%} else{ %>
										<a href="faqMain.jsp"><button>�ڷΰ���</button></a>
										<%} %>
										</div>
										<br><br>
							<!-- QnAviewƲ �� -->
						</article>
						<hr />
					</div>
						<!-- top��ư -->
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
											<h3>(��) ����� ������ ��ǥ : �����<br> �ּ� : ���� ���� ������ 31-15 3�� / ������ ioT ����SW ����������(NCS)</h3>
										</header>
										<p></p>
										
									</section>

								<!-- Copyright -->
									<div class="copyright">
										<ul class="menu">
											<li>&copy;����� ������</li><li>Design: HTML5 UP && �����, �輱��</li>
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