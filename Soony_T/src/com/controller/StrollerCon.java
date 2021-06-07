package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.CongMember_infoDTO;
import com.model.StrollerDAO;
import com.model.StrollerDTO;

@WebServlet("/StrollerCon")
public class StrollerCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		HttpSession session = request.getSession();
		CongMember_infoDTO iddto = (CongMember_infoDTO)session.getAttribute("Ldto");
		
		String id = iddto.getId();
		String str_num = request.getParameter("str_num");
		
		StrollerDAO dao = new StrollerDAO();
		StrollerDTO dto = new StrollerDTO(str_num, id);
		
		int cnt = dao.Enrollment(dto);
		
		if(cnt>0) {
			System.out.println("유모차 고유번호 등록 성공");
		}else {
			System.out.println("유모차 고유번호 등록 실패");
		}
		response.sendRedirect("main.jsp");
	}

}
