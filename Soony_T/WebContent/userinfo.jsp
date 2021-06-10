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
		<title>SoonyCong ȸ������</title>
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
				<div id="header" style="height: 10vh; min-height: 20em;">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="main.jsp" id="logo">SoonyCong</a></h1>
								<hr />
								<p>������ ������ ���� ���ϰ� �����ϰ�</p>
							</header>
							
						</div>

					<!-- ��ܹ� Nav -->
						<nav id="nav">
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
				<div class="wrapper style2">

						<section id=logmain>
			<div style="width:1200px; margin:auto" align="center">
				<form action="" method="post">
				<br><br>
					<table id="tb" border="1px solid">
					<caption style="margin-bottom: 50px"><h2>ȸ������������</h2></caption>
						<tr>
						<th>���̵�</th>
						<th>��й�ȣ</th>
						<th>�̸�</th>
						<th>��ȭ��ȣ</th>
						<th>�̸���</th>
						<th>�г���</th>
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
						<!-- <a href="../main.jsp" class="button next scrolly" >�ǵ��ư���</a>  -->
					</div>
					</form>
				</div>
			</section>
				<!-- top��ư -->
							<a id="toTop" href="#top">
						 		<img src="images/top.png" width="60px" height="50px" alt="" >
							</a>
		</div>

			
			
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