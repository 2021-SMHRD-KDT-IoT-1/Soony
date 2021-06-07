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
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/FAQWriteCon")
public class FAQWriteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		HttpSession session = request.getSession();
		
		CongMember_infoDTO info = (CongMember_infoDTO) session.getAttribute("Ldto");


		System.out.println(title);
		System.out.println(content);
		
		FAQDTO dto = new FAQDTO(title, content);
		FAQDAO dao = new FAQDAO();
		
		int cnt = dao.upload(dto);
		
		if(cnt>0) {
			System.out.println("수정 성공!");
		}else {
			System.out.println("수정 실패!");
		}
		response.sendRedirect("faqMain.jsp");
	}

}
