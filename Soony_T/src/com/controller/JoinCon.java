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

@WebServlet("/JoinCon")
public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String nick = request.getParameter("nick");

		CongMember_infoDAO dao = new CongMember_infoDAO();
		CongMember_infoDTO dto = new CongMember_infoDTO(id, pw, name, tel, email, nick);

		int cnt = dao.join(dto);

		if (cnt > 0) {
			System.out.println("회원가입 성공");
			HttpSession session = request.getSession();
			session.setAttribute("nick", nick);
			
			response.sendRedirect("login.jsp");
		} else {
			System.out.println("회원가입 실패");
			response.sendRedirect("join.jsp");
		}
		
	}

}
