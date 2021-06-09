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
	</head>
	<body class="homepage is-preload">
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
								<li><a href="sidebar.jsp">�����Խ���</a></li>
								<li>
									<a href="#">�� ����</a>
									<ul>
										<li><a href="sidebar.jsp">���� ���� ����</a></li>
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
						
						
						<!-- ��� ����� ĭ ���� -->
						<tr><td height="20px" colspan="2"></td></tr>
						
						<tr>
							<td>��й�ȣ</td>
							<td><input type="password"  placeholder="PW�� �Է��ϼ���" name = "pw"></td>
						</tr>
						
						<!-- ��� ����� ĭ ���� -->
						<tr><td height="20px" colspan="2"></td></tr>
						
						<tr>
							<td>�̸�</td>
							<td><input type="text"  placeholder="�̸��� �Է��ϼ���" name = "name"></td>
						</tr>
						
						<!-- ��� ����� ĭ ���� -->
						<tr><td height="20px" colspan="2"></td></tr>
						
						<tr>
							<td>��ȭ��ȣ</td>
							<td><input type="text"  placeholder="��ȭ��ȣ�� �Է��ϼ���" name = "tel"></td>
						</tr>
						
						<!-- ��� ����� ĭ ���� -->
						<tr><td height="20px" colspan="2"></td></tr>
						
						<tr>
							<td>�г���</td>
							<td><input type="text"  placeholder="�г����� �Է��ϼ���" name = "nick"></td>
						</tr>
						
						<!-- ��� ����� ĭ ���� -->
						<tr><td height="20px" colspan="2"></td></tr>
						
						<tr>
							<td>�̸���</td>
							<td><input type="text"  placeholder="�̸����� �Է��ϼ���" name = "email"></td>
						</tr>
					</table>
			
			<br><br><br>
			
					<div align="center">
						<input id="joinBtn" type="submit" value="��������" class="button fit" >
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