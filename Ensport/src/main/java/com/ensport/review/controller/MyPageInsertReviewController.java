package com.ensport.review.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ensport.review.model.service.ReviewService;
import com.ensport.review.model.vo.Review;

/**
 * Servlet implementation class MyPageInsertReviewController
 */
@WebServlet("/insertMyReview.me")
public class MyPageInsertReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageInsertReviewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int playerNo = Integer.parseInt(request.getParameter("playerNo"));
		
		request.setAttribute("playerNo", playerNo);
		request.getRequestDispatcher("views/review/myPageReview_insert.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int playerNo = Integer.parseInt(request.getParameter("playerNo"));
		int score = Integer.parseInt(request.getParameter("reviewScore"));
		
		String reviewContent = request.getParameter("reviewContent");
		
		
		System.out.println("=================");
		System.out.println(playerNo);
		System.out.println(score);
		System.out.println(reviewContent);
		System.out.println("=================");
		
		
		
		int result = new ReviewService().insertMyReview(score, reviewContent, playerNo);
		
		System.out.println("결과:" + result);
		
		
		
		HttpSession session = request.getSession();
		
		if(result > 0) {
			session.setAttribute("alertMsg", "리뷰 등록 완료!");
		}else {
			session.setAttribute("alertMsg", "리뷰 삭제 완료!");
		}
		response.sendRedirect(request.getContextPath()+"/myPageReview.me?currentPage=1");
		
	}

}
