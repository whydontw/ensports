package com.ensport.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ensport.member.model.service.MemberService;

/**
 * Servlet implementation class MemberDeleteController
 */
@WebServlet("/memberDelete.me")
public class MemberDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		String userPwd = request.getParameter("password");
		
		int result = new MemberService().deleteMember(userNo, userPwd);
		
		if(result > 0) {	//성공
			
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg", "Ensport 탈퇴 완료.");

			response.sendRedirect(request.getContextPath() + "/login.me");
			session.invalidate();
			
		}else {
			
			//실패시 errorPage로 에러 메시지와 함께 forwarding(위임하기)
			request.setAttribute("errorMsg", "회원 탈퇴 실패!");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
