package com.ensport.reservation.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.ensport.common.JDBCTemplate;
import com.ensport.common.model.vo.PageInfo;
import com.ensport.qa.model.dao.QaDao;
import com.ensport.qa.model.vo.Qa;
import com.ensport.reservation.model.dao.ReservationDao;
import com.ensport.reservation.model.vo.Reservation;

public class ReservationService {

	
	//마이페이지 내 Qa 개수 조회 메소드
	public int reservationListCount(int userNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		//게시글 개수 받아줄 변수 준비
		int count = new ReservationDao().reservationListCount(conn, userNo);
		
		JDBCTemplate.close(conn);
		
		return count; //게시글 개수 돌려주기
	}
	
	
	//마이페이지 내 Qa 불러오기
	public ArrayList<Reservation> selectMyReservationList(PageInfo pi, int userNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Reservation> selectMyReservationList = new ReservationDao().selectMyReservationList(conn, userNo, pi);
		
		return selectMyReservationList;
				
	}
}
