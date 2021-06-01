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

@WebServlet("/UpdateCon")
public class UpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		HttpSession session = request.getSession();
		CongMember_infoDTO iddto = (CongMember_infoDTO)session.getAttribute("Ldto");
		
		
		String id = iddto.getId();
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String nick = request.getParameter("nick");
		
		System.out.println(id);
		System.out.println(pw);
		System.out.println(name);
		System.out.println(tel);
		System.out.println(email);
		System.out.println(nick);

		CongMember_infoDAO dao = new CongMember_infoDAO();
		CongMember_infoDTO dto = new CongMember_infoDTO(id, pw, name, tel, email, nick);

		int cnt = dao.update(dto);

		if (cnt > 0) {
			System.out.println("정보수정 성공");

			response.sendRedirect("main.jsp");
		} else {
			System.out.println("정보수정 실패");
			response.sendRedirect("update.jsp");
		}

	}

}
