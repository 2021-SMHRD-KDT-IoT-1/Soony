package com.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.CongMember_infoDTO;
import com.model.FAQDAO;
import com.model.FAQDTO;
import com.model.FreeBoardDAO;
import com.model.FreeBoardDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/FAQUpdateCon")
public class FAQUpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");

		HttpSession session = request.getSession();
		
		CongMember_infoDTO info = (CongMember_infoDTO) session.getAttribute("Ldto");

		// 데이터 베이스에 저장하기위해서 fileName, title, content 등의 정보 가져오기
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int num = Integer.parseInt(request.getParameter("f_num"));

		System.out.println(title);
		System.out.println(content);
		System.out.println(num);
		
		FAQDTO dto = new FAQDTO(num, title, content);
		FAQDAO dao = new FAQDAO();
		
		int cnt = dao.update(dto);
		
		if(cnt>0) {
			System.out.println("수정 성공!");
		}else {
			System.out.println("수정 실패!");
		}
		response.sendRedirect("faqMain.jsp");
	}

}
