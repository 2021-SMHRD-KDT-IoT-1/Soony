package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.QNADAO;

@WebServlet("/QnaDeleteCon")
public class QnaDeleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("euc-kr");
		
		String q_num = request.getParameter("q_num");
		
		System.out.println(q_num);
		
		QNADAO dao = new QNADAO();
		int cnt = dao.delete(q_num);
		
		if(cnt>0) {
			System.out.println("메세지 하나 삭제 완료");
		}else {
			System.out.println("메세지 하나 삭제 실패");
		}
		
		response.sendRedirect("qnaMain.jsp");
		
		
		
		
		
	}

}
