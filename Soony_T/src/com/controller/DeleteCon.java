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

@WebServlet("/DeleteCon")
public class DeleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		HttpSession session = request.getSession();
		CongMember_infoDTO iddto = (CongMember_infoDTO)session.getAttribute("Ldto");
		
		String id = iddto.getId();
		String pw = request.getParameter("pw");
		
		CongMember_infoDAO dao = new CongMember_infoDAO();
		CongMember_infoDTO dto = new CongMember_infoDTO(id, pw);
		
		int cnt = dao.delete(dto);
		
		if (cnt > 0) {
			System.out.println("È¸¿øÅ»Åð ¼º°ø");
			session.removeAttribute("Ldto");
			response.sendRedirect("main.jsp");
		} else {
			System.out.println("È¸¿øÅ»Åð ½ÇÆÐ");
			response.sendRedirect("delete.jsp");
		}
	
	}

}
