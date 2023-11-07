package com.ensport.matching.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.ensport.matching.model.dao.SoccerMatchingDao;
import com.ensport.matching.model.service.SoccerMatchingService;
import com.ensport.matching.model.vo.SoccerMatching;

/**
 * Servlet implementation class SoccerSeoulController
 */
@WebServlet("/sc.seoul")
public class SoccerSeoulController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SoccerSeoulController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String localName = request.getParameter("localName");
		
		ArrayList<SoccerMatching> list = new SoccerMatchingService().selectSoccerMatchingList(localName);
		
		for(SoccerMatching sm : list) {
			System.out.println(sm);
		}
		
		
		request.setAttribute("slist", list);
		
		request.getRequestDispatcher("views/matching/soccerSeoul.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
