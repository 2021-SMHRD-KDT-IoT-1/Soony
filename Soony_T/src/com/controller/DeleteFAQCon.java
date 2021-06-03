package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.FAQDAO;
import com.model.FreeBoardDAO;

@WebServlet("/DeleteFAQCon")
public class DeleteFAQCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String num = request.getParameter("f_num");
		
		FAQDAO dao = new FAQDAO();
		int cnt = dao.delete(num);
		
		if (cnt > 0) {
			System.out.println("삭제 완료!");
		} else {
			System.out.println("삭제 실패!");
		}
		response.sendRedirect("faqMain.jsp");
	}

}
