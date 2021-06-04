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
import com.model.RQNADAO;
import com.model.RQNADTO;

@WebServlet("/QnaDeleteComentCon")
public class QnaDeleteComentCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("EUC-KR");
		HttpSession session = request.getSession();
		int q_num = Integer.parseInt(request.getParameter("q_num"));
		int rq_num = Integer.parseInt(request.getParameter("rq_num"));
		
		System.out.println(q_num);
		System.out.println(rq_num);
		
		RQNADTO dto = new RQNADTO(rq_num);
		RQNADAO dao = new RQNADAO();
		CongMember_infoDTO info = (CongMember_infoDTO) session.getAttribute("Ldto");
		
		int cnt = dao.delete(dto);
		
		if(cnt>0) {
			System.out.println("댓글 삭제 성공");
		}else {
			System.out.println("댓글 삭제 실패");
		}
		session.setAttribute("Ldto", info);
		response.sendRedirect("qnaView.jsp?q_num="+q_num);
	}

}
