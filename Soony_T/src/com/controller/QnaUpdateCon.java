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
import com.model.FreeBoardDAO;
import com.model.FreeBoardDTO;
import com.model.QNADAO;
import com.model.QNADTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/QnaUpdateCon")
public class QnaUpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html; charset=EUC-KR");

		// �� ���� �����̳� ���
		String root = request.getSession().getServletContext().getRealPath("/upload");
		File folder = new File(root);
		if (!folder.exists()) {
			folder.mkdir();
		}

		// �̹��� ũ�� ����
		int size = 1024 * 1024 * 10; // 10MB

		// �����̸� ���ڵ� ����
		String encoding = "EUC-KR";
		
		// cos.jar ���Ͼȿ� �ִ� Ŭ���� ���
		// ��û, ������, ������ �ִ�ũ��, ���ڵ� ���, DefaultFileRenamePolicy : �̹��� ���� �ߺ�����
		MultipartRequest multi = new MultipartRequest(request, root, size, encoding,
				new DefaultFileRenamePolicy());
		
		Enumeration files = multi.getFileNames();
		String str = (String) files.nextElement();

		String uploadPath = root + File.separator + multi.getFilesystemName(str);

		HttpSession session = request.getSession();
		
		CongMember_infoDTO info = (CongMember_infoDTO) session.getAttribute("Ldto");

		
		
		// ������ ���̽��� �����ϱ����ؼ� fileName, title, content ���� ���� ��������
		String title = multi.getParameter("title");
		String file = URLEncoder.encode(multi.getFilesystemName("file"), "EUC-KR");
		String content = multi.getParameter("content");
		int num = Integer.parseInt(request.getParameter("q_num"));

		System.out.println(title);
		System.out.println(file);
		System.out.println(content);
		System.out.println(num);
		
		QNADTO dto = new QNADTO(num, title, content, file);
		QNADAO dao = new QNADAO();
		
		int cnt = dao.update(dto);
		
		if(cnt>0) {
			System.out.println("���� ����!");
		}else {
			System.out.println("���� ����!");
		}
		response.sendRedirect("qnaMain.jsp");
	}

}
