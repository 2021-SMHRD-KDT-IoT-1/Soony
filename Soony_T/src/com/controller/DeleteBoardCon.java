package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.FreeBoardDAO;

@WebServlet("/DeleteBoardCon")
public class DeleteBoardCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String num = request.getParameter("b_num");
		
		FreeBoardDAO dao = new FreeBoardDAO();
		int cnt = dao.delete(num);
		
		if (cnt > 0) {
			System.out.println("삭제 완료!");
		} else {
			System.out.println("삭제 실패!");
		}
		response.sendRedirect("boardMain.jsp");
	}

}
