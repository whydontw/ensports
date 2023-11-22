package com.ensport.myplace.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.ensport.myplace.model.service.MyPlaceService;

/**
 * Servlet implementation class deleteMyPlaceController
 */
@WebServlet("/deleteMyPlace.do")
public class deleteMyPlaceController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteMyPlaceController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int placeNo = Integer.parseInt(request.getParameter("pno"));
		int userNo = Integer.parseInt(request.getParameter("userNo"));

		int result = new MyPlaceService().deleteMyPlace(placeNo, userNo);
		
		
		JSONObject jObj = new JSONObject();
		
		jObj.put("myPlaceLikeYn", result);
		
		response.getWriter().print(jObj);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
