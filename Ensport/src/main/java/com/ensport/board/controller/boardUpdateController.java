package com.ensport.board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Locale.Category;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ensport.board.model.service.BoardService;
import com.ensport.board.model.vo.Attachment;
import com.ensport.board.model.vo.Board;

/**
 * Servlet implementation class boardUpdateController
 */
@WebServlet("/boardUpdate.bo")
public class boardUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public boardUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int bno = Integer.parseInt(request.getParameter("bno")); //request요청값은 String타입으로 꺼내지므로 형변환
		
		
		BoardService bs = new BoardService();
		//수정페이지에 띄워줄 데이터 조회해오기
		Board b = bs.selectBoard(bno); 
		//첨부파일 정보
		Attachment at = bs.selectAttachment(bno);
		
		request.setAttribute("b", b);
		request.setAttribute("at", at);
		
		request.getRequestDispatcher("views/board/boardUpdateForm.jsp").forward(request, response);;
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
