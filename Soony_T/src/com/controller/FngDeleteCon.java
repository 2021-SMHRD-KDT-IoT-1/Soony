package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import com.model.FngDAO;

@WebServlet("/FngDeleteCon")
public class FngDeleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
//		HttpSession session = request.getSession();
		String num = request.getParameter("num");
//		String moveURL = null;
		
		FngDAO dao = new FngDAO();
		int cnt = dao.delete(num);
		
		if(cnt>0) {
			System.out.println("삭제 완료!");
		}else {
			System.out.println("삭제 실패!");
		}
		response.sendRedirect("fngView.jsp");
	}

}
