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
import com.model.QNADAO;
import com.model.QNADTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/QnaWriteCon")
public class QnaWriteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// title, writer, content 인코딩
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html; charset=EUC-KR");

		// 웹 서버 컨테이너 경로
		String root = request.getSession().getServletContext().getRealPath("/upload");
		File folder = new File(root);
		if (!folder.exists()) {
			folder.mkdir();
		}

		// 이미지 크기 지정
		int size = 1024 * 1024 * 10; // 10MB

		// 사진이름 인코딩 설정
		String encoding = "EUC-KR";
		
		// cos.jar 파일안에 있는 클래스 사용
		// 요청, 저장경로, 사이즈 최대크기, 인코딩 방식, DefaultFileRenamePolicy : 이미지 파일 중복제거
		MultipartRequest multi = new MultipartRequest(request, root, size, encoding,
				new DefaultFileRenamePolicy());
		
		Enumeration files = multi.getFileNames();
		String str = (String) files.nextElement();

		String uploadPath = root + File.separator + multi.getFilesystemName(str);
		
		System.out.println(uploadPath); //경로 확인

		HttpSession session = request.getSession();
		
		CongMember_infoDTO info = (CongMember_infoDTO) session.getAttribute("Ldto");

		
		
		// 데이터 베이스에 저장하기위해서 fileName, title, content 등의 정보 가져오기
		String title = multi.getParameter("title");
		String writer = info.getNick();
		String content = multi.getParameter("content");
		String file = URLEncoder.encode(multi.getFilesystemName("file"), "EUC-KR");

		System.out.println(title);
		System.out.println(writer);
		System.out.println(file);
		System.out.println(content);
		
		QNADTO dto = new QNADTO(writer, title, content, file);
		QNADAO dao = new QNADAO();
		
		int cnt = dao.upload(dto);
		
		if(cnt>0) {
			System.out.println("파일 업로드 성공");
		}else {
			System.out.println("파일 업로드 실패");
		}
		response.sendRedirect("qnaMain.jsp");

	}

}
