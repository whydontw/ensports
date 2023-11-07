package com.ensport.place.controller;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ensport.place.model.service.SoccerPlaceService;
import com.ensport.place.model.vo.SoccerPlace;
/**
 * Servlet implementation class SoccerSeoulController
 */
@WebServlet("/seoul.so")
public class SoccerPlaceSeoulController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SoccerPlaceSeoulController() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//==================================
		//soccer 서울 페이지 가기
		//==================================
		
		
		String localName = request.getParameter("localName");
				
		ArrayList<SoccerPlace> list = new SoccerPlaceService().SoccerPlaceList(localName);
						
		request.setAttribute("list",list);
		
		request.getRequestDispatcher("views/place/soccerplaceseoul.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}