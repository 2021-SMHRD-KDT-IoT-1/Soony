
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
		<title>����� ������</title>
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
			System.out.println("�α��� ����");
			
		}else{
			
			System.out.println("�α׾ƿ� ����");
		}
	%>
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="main.jsp" id="logo">����� ������</a></h1>
								<hr />
								<p>������ ������ ���� ���ϰ� �����ϰ�</p>
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
					     <button><a href="LogoutCon">�α׾ƿ�</a></button>
					     <button><a href="userinfo.jsp">ȸ������</a></button>
					    <%}else{ %>
					    <button><a href="LogoutCon">�α׾ƿ�</a></button>
					    <button><a href="mypage.jsp">����������</a></button>
					    <%}%>
					    <%}else{%>
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
			 
			<!-- Banner -->
				<section id="banner">
					<header>
						<h2>����԰� ������ �߱��ϴ�<strong>����� ������</strong>�Դϴ�.</h2>
						<p>
							����� �������� ������, ��𼭳� ������ �������� ������ ���̿� <br>�����ϰ� ����� �߾��� ����� ���ؼ� �����ڽ��ϴ�.
						</p>
					</header>
				</section>

				<!-- ��ǰ���� �� �İ� Carousel -->
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
							<h2><a href="#">������ ����</a></h2>
						</header>
						<a class="image featured"><img src="images/sa.png" alt="" /></a>
						
						<header>
							<br>
							<h2>������ ���� TIP</h2>
						</header>
						<table>
							<tbody>
								<tr>
									<td scope="row" class="icon">
										<span class="rounded-circle">
											<img src="images/ico_tip_1.png">
										</span>
									</td>
									<td class="tip">�������� ũ��</td>
									<td class="tip">�������� ������ Ŭ���� ��ֹ��� ���� ���� �� �ְ� ��鸲�� �����ϴ�.</td>
								</tr>
								<tr>
									<td scope="row" class="icon">
										<span class="rounded-circle">
											<img src="images/ico_tip_2.png">
										</span>
									</td>
									<td class="tip">���������</td>
									<td class="tip">������� ����� ���̿��� ���޵��� �ʰ� ����� ����ϴ� ��ġ�� �������� �������� �������ݴϴ�.</td>
								</tr>
								<tr>
									<td scope="row" class="icon">
										<span class="rounded-circle">
											<img src="images/ico_tip_3.png">
										</span>
									</td>
									<td class="tip">������</td>
									<td class="tip">���ڵ��̳� ��Ʈ ������ ��ȯ�Ͽ� ��ȣ�ڿ� ���ֺ� �� �ִ� ���</td>
								</tr>
								<tr>
									<td scope="row" class="icon">
										<span class="rounded-circle">
											<img src="images/ico_tip_4.png">
										</span>
									</td>
									<td class="tip">������̰���</td>
									<td class="tip">��175������ 95������ ���̼��忡 ���� ���� ����</td>
								</tr>
								<tr>
									<td scope="row" class="icon">
										<span class="rounded-circle">
											<img src="images/ico_tip_5.png">
										</span>
									</td>
									<td class="tip">�����縷</td>
									<td class="tip">�����縷 ���̿� �ܰ躰 ������ �������� üũ</td>
								</tr>
								<tr>
									<td scope="row" class="icon">
										<span class="rounded-circle">
											<img src="images/ico_tip_6.png">
										</span>
									</td>
									<td class="tip">����ٱ���</td>
									<td class="tip">��ũ�� ưư�ؾ� �̵��� ������ ���մϴ�.</td>
								</tr>
								<tr>
									<td scope="row" class="icon">
										<span class="rounded-circle">
											<img src="images/ico_tip_7.png">
										</span>
									</td>
									<td class="tip">��Ʈ����ý���</td>
									<td class="tip">���Ż��ƿ� �ٱ��� ī��Ʈ�� �������� �����ؼ� ����� �� �ִ� ���</td>
								</tr>
								<tr>
									<td scope="row" class="icon">
										<span class="rounded-circle">
											<img src="images/ico_tip_8.png">
										</span>
									</td>
									<td class="tip">������ or �������ĵ�</td>
									<td class="tip">���������� ���� ���� ��� �ִ����� ���� ������ ���� ���ĵ� ����</td>
								</tr>
								<tr>
									<td scope="row" class="icon">
										<span class="rounded-circle">
											<img src="images/ico_tip_9.png">
										</span>
									</td>
									<td class="tip">�������� ����Ʈ�� ������</td>
									<td class="tip">�������� �ڵ鸵�ϱ� ���� ���Կ� ������</td>
								</tr>
							</tbody>
						</table>
						
					</article>
				</div>

				<!-- top��ư -->
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