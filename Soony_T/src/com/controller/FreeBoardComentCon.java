package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.CongMember_infoDTO;
import com.model.FreeBoardComentDAO;
import com.model.FreeBoardComentDTO;

@WebServlet("/FreeBoardComentCon")
public class FreeBoardComentCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
	
	HttpSession session = request.getSession();
	
	CongMember_infoDTO info = (CongMember_infoDTO) session.getAttribute("Ldto");
	String username = info.getNick();
	String content = request.getParameter("content");
	int b_num = Integer.parseInt(request.getParameter("b_num"));
	System.out.println(username);
	System.out.println(content);
	System.out.println(b_num);
	
	FreeBoardComentDTO dto = new FreeBoardComentDTO(b_num, username, content);
	FreeBoardComentDAO dao = new FreeBoardComentDAO();
	
	int cnt = dao.upload(dto);
	
	if(cnt>0) {
		System.out.println("��� ��� ����");
	}else {
		System.out.println("��� ��� ����");
	}
	session.setAttribute("Ldto", info);
	
	response.sendRedirect("boardView.jsp?b_num="+b_num);
	}

}
