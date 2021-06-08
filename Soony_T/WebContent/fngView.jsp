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
		<title>SoonyCong ��������������</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/login.css" />
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
			System.out.println("�α��� ����");
			
		}else{
			
			System.out.println("�α׾ƿ� ����");
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
								<h1><a href="main.jsp" id="logo">����� ������</a></h1>
								<hr />
								<p>������ ������ ���� ���ϰ� �����ϰ�</p>
							</header>
						
						</div>

					<!-- ��ܹ� Nav -->
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
									<a href="#">���� ����</a>
									<ul>
										<li><a href="faqMain.jsp">���� ���� ����</a></li>
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
							<br><br><br><h2><a href="#">����</a></h2>
						</header>
						
						<section id="logmain">
						<div style="width:500px; margin:auto" align="center">
						<form action="StrollerCon" method="post">
						<br><br><br>
						<table style="text-align: center;">
							<tr>
     			<td>��ȣ</td>
     			<td>�̸�</td>
     			<td>����</td>
     		</tr>
     		<%for(int i = 0; i<li.size(); i++) { %>
     			<tr>
     			<td><%=li.get(i).getFng_num()  %></td>
     			<td><%=li.get(i).getFng_name()  %></td>
     			<td><%if(dto!=null) {%>
     				<a href = "FngDeleteCon?num=<%=li.get(i).getFng_num() %>">����</a>
     				<%} %></td>
     				
     			</tr>
     		<%} %>
						</table>
						<br><br>
						<div align="center">
						<a href="main.jsp"><button id="writer">Ȩ���ΰ���</button></a>
					</div>
				</form>
			</div>
		</section>
	</div>
						
						
					</article>
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
			function numCheck() {
	
				// input�� �ִ� ���� �����ͼ� ������ ����
				let str_num = $('#str_num').val();
	
	
				// ajax ���� �κ�
				$.ajax({
					url : 'StrollerCheck',
					type : 'post',
					data : {
						'str_num' : str_num
					},
					success : function(data) {
	
						
						if (data == 'true') {
							alert('������ ������ȣ ��� ����');
						}else{
							alert('������ ��ȣ�� �ߺ��˴ϴ�!');								
						}
						
						//location.window.href = "main.jsp";
					},
					error : function() {
						alert('��ȸ ����');
					}
				});
	
			}
			
			</script>
			

	</body>
</html>