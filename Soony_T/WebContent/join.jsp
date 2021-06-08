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
	</head>
	<body class="homepage is-preload">
	<%
		String id = request.getParameter("id");
		CongMember_infoDAO dao = new CongMember_infoDAO();
		boolean result = dao.idCheck(id);
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
							
						</div>

					<!-- ��ܹ� Nav -->
						<nav id="nav">
							<ul>
								<li><a href="main.jsp">��ü����</a></li>
								<li>
									<a href="#">������</a>
									<ul>
										<li><a href="#">������ ���</a></li>
										<li><a href="#">���� ����</a></li>
										<li><a href="#">��� �˸�</a></li>
									</ul>
								</li>
								<li><a href="boardMain.jsp">�����Խ���</a></li>
								<li>
									<a href="#">�� ����</a>
									<ul>
										<li><a href="faqMain.jsp">���� ���� ����</a></li>
										<li><a href="anqMain.jsp">QnA</a></li>
									</ul>
								</li>
							</ul>
						</nav>

				</div>
			 
			<!-- Main -->
				<div class="wrapper style2">

					<article id="main" class="container special">
						<header>
							<br><br><br><h2><a href="#">ȸ������</a></h2>
						</header>
						
						<section id="logmain">
						<div style="width:700px; margin:auto" align="center">
						
						
				<form action="JoinCon" method="post">
				<br><br>
					<table>
						<tr>
							<td>���̵�</td>
							<td>
								<input id="userId" type="text"  placeholder="ID�� �Է��ϼ���" name = "id" style="width:calc( 100% / 2); display:inline-block;">
								<input id="idChkBtn" type="button" value="�ߺ�Ȯ��" onclick="idCheck()">
							</td>
						</tr>
						
						<!-- ��� ����� ĭ ���� -->
						<tr><td height="20px" colspan="2"></td></tr>
						
						<tr>
							<td >��й�ȣ</td>
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
						<input id="joinBtn" type="submit" value="ȸ������" class="button fit" >
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


			<script type="text/javascript">
			
			
				// ���� ������ �ޱ�
				// ajax ���ڵ��� UTF-8�� �����ؾ���
				function idCheck() {
		
					// input�� �ִ� ���� �����ͼ� ������ ����

					let userId = $('#userId').val();
		
					console.log(userId);
					
					// ajax ���� �κ�
					$.ajax({
						url : 'idCheck',
						type : 'post',
						data : {
							'userId' : userId
							},
						success : function(data) {

							if (data == 'false') {
								alert('����Ҽ� ���� ���̵� �Դϴ�.');
							}else{
								alert('��� ������ ���̵� �Դϴ�.');								
							}
						},
						error : function() {
							alert('��ȸ ����');
						}
					});
		
				}
				
				</script>

	</body>


	
	
	
</html>