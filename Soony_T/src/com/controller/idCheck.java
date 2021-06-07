package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.CongMember_infoDAO;

@WebServlet("/idCheck")
public class idCheck extends HttpServlet {
    
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();

		String id = request.getParameter("userId");
		System.out.println(id);
		
		CongMember_infoDAO dao = new CongMember_infoDAO();
		
		
		
		if (dao.idCheck(id)) {
			System.out.println("false");
			out.print("false");
		}else {
			System.out.println("true");
			out.print("true");
		}
	}

}
