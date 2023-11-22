package com.ensport.matching.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ensport.admin.model.vo.Attachment;

import com.ensport.matching.model.service.SoccerMatchingService;
import com.ensport.member.model.vo.Member;
import com.ensport.myplace.model.service.MyPlaceService;
import com.ensport.place.model.vo.Place;

/**
 * Servlet implementation class SoccerMatchingDetailController
 */
@WebServlet("/detail.so")
public class SoccerMatchingDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SoccerMatchingDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();

		//로그인 하지않을 시 초기값(찜)
		int userNo = 0;
		
		//로그인 시
		if((session.getAttribute("loginUser")) != null) {
			//userNo 세션에서 추출하기
			userNo = ((Member)session.getAttribute("loginUser")).getUserNo();
		}
		
		String matchingDate = request.getParameter("date");
		String matchingTime = request.getParameter("time");
		
		int placeNo = Integer.parseInt(request.getParameter("pno"));
		
	
		
		SoccerMatchingService ss = new SoccerMatchingService();
		
		//찜 여부 확인하기
		int likeYn = new MyPlaceService().selectMyPlaceYn(userNo, placeNo);
		
		System.out.println(userNo);
		System.out.println(placeNo);
		System.out.println("찜 맻개 들어갔니?" + likeYn);
		
		
		int result = ss.increaseCount(placeNo);
		
		if(result>0) {
			Place p = ss.selectPlace(placeNo);
			ArrayList<Attachment> list = ss.selectAttachmentList(placeNo);
			
			
			request.setAttribute("likeYn", likeYn);
			request.setAttribute("time", matchingTime);
			request.setAttribute("pno", placeNo);
			request.setAttribute("p", p);
			request.setAttribute("slist", list);
			request.setAttribute("matchingDate", matchingDate);
			request.getRequestDispatcher("views/information/soccerMatchingInfo.jsp").forward(request, response);
			
		}else {
			session.setAttribute("alertMsg", "상세보기 실패");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
