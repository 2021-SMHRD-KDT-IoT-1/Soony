package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.CongMember_infoDAO;
import com.model.CongMember_infoDTO;

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println(id);
		System.out.println(pw);
		
		CongMember_infoDAO dao = new CongMember_infoDAO();
		CongMember_infoDTO dto = new CongMember_infoDTO(id, pw);
		
		CongMember_infoDTO Ldto = dao.login(dto);
		
		if (Ldto != null) {
			System.out.println("로그인 성공!");
			HttpSession session = request.getSession();
			session.setAttribute("Ldto", Ldto);

		} else {
			System.out.println("로그인 실패!");
		}
		response.sendRedirect("main.jsp");
	}

}
