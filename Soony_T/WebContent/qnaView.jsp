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
		System.out.println("�α��� ����");

	} else {

		System.out.println("�α׾ƿ� ����");
	}

	//get������� ���� num �޾ƿ���
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
							
							<!-- QnAViewƲ ����-->
							
							<!-- �� ���� -->
							
								<div class="title">
									<h1>��<%= qdto.getQ_title() %></h1>
								</div>
								<div class="title">
									<h1>���ۼ��� : <%= qdto.getQ_username() %>�����������������������ۼ��� : <%= qdto.getDate()%></h1>
								</div>
								
							<!-- �� ���� -->
								<br><br>
								<div align="center">
									<img src="upload/<%= qdto.getQ_img() %>"><br>
										<%= qdto.getQ_content() %>
								</div>
								<br><br>
											
									<div align="center">
										<%if(dto.getNick().equals(qdto.getQ_username())) {%>
										<a href="qnaMain.jsp"><button>�ڷΰ���</button></a>
										<a href="qnaUpdate.jsp?q_num=<%= qdto.getQ_num() %>"><button>�����ϱ�</button></a>
										<a href="QnaDeleteCon?q_num=<%= qdto.getQ_num() %>"><button>�����ϱ�</button></a>
										<%} else{ %>
										<a href="qnaMain.jsp"><button>�ڷΰ���</button></a>
										<%} %>
									</div>	
									<br><br>
									
							<!-- �亯 �ۼ� -->		
								
								<table>
								
								<tr>
								<td>��ȣ</td>
								<td>�ۼ���</td>
								<td>����</td>
								<td>��¥</td>
								<td></td>
								
								</tr>
								
								<%for(int i = 0; i< listr.size(); i++){ %>
								<tr>
								<td><%=i+1 %></td>
								<td><%=listr.get(i).getUsername()%></td>
								<td><%=listr.get(i).getContent()%></td>
								<td><%=listr.get(i).getDate()%></td>
								<%if(dto.getNick().equals(listr.get(i).getUsername())) {%>
								<td><a href="QnaDeleteComentCon?rq_num=<%=listr.get(i).getRqnum() %>&q_num=<%=qdto.getQ_num()%>"> ����</a> </td>
								<%} %>
								<%} %>
								</tr>
								
								</table>
								<%if(dto.getId().equals("admin")) {%>
								<form action="QnaBoardComentCon?q_num=<%=qdto.getQ_num() %>" method="post">
								<ul>
								<ul>
								<p>����ۼ��ϱ�</p>
								<textarea name="content" rows="5" style="width: 80%; resize:none;"></textarea>
								</ul>
								<ul> 
								<button><a><input type = "submit" value="�ۼ��Ϸ�"></a></button>
								</ul>
								</ul>
								</form>
								<%} %>
							</div>
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