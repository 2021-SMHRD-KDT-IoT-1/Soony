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

@WebServlet("/FreeBoardDeleteComentCon")
public class FreeBoardDeleteComentCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("EUC-KR");
		HttpSession session = request.getSession();
		int b_num = Integer.parseInt(request.getParameter("b_num"));
		int c_num = Integer.parseInt(request.getParameter("c_num"));
		
		FreeBoardComentDTO dto = new FreeBoardComentDTO(c_num);
		FreeBoardComentDAO dao = new FreeBoardComentDAO();
		CongMember_infoDTO info = (CongMember_infoDTO) session.getAttribute("Ldto");
		
		int cnt = dao.delete(dto);
		
		if(cnt>0) {
			System.out.println("댓글 삭제 성공");
		}else {
			System.out.println("댓글 삭제 실패");
		}
		session.setAttribute("Ldto", info);
		response.sendRedirect("boardView.jsp?b_num="+b_num);
	}

}
