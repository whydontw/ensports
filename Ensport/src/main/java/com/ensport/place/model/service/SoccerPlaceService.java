package com.ensport.place.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.ensport.admin.model.vo.Attachment;
import com.ensport.common.JDBCTemplate;
import com.ensport.member.model.dao.MemberDao;
import com.ensport.place.model.dao.SoccerPlaceDao;
import com.ensport.place.model.vo.PlaceTime;
import com.ensport.place.model.vo.SoccerPlace;
import com.ensport.reservation.model.vo.Reservation;

public class SoccerPlaceService {
	
	//축구시설예약 목록 조회
	public ArrayList<SoccerPlace> SoccerPlaceList(String localName) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<SoccerPlace> list = new SoccerPlaceDao().selectSoccerPlaceList(conn, localName);
		
		JDBCTemplate.close(conn);
		
		return list;
		
	}
	

	//조회수 증가 메소드
	public int increaseCount(int placeNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new SoccerPlaceDao().increaseCount(conn,placeNo);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}

	//축구시설예약 상세보기
	public ArrayList<Attachment> selectSoccerAttachmentlist(int placeNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Attachment> list = new SoccerPlaceDao().selectSoccerAttachmentlist(conn,placeNo);
		
		JDBCTemplate.close(conn);
		
		return list;
	}

	public SoccerPlace selectSoccerPlace(int placeNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		SoccerPlace ssp = new SoccerPlaceDao().selectSoccerPlace(conn,placeNo);
		
		JDBCTemplate.close(conn);
		
		return ssp;

	}

	//경기장 전체 조회
	public ArrayList<SoccerPlace> selectAllSoccerPlaceList() {
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<SoccerPlace> list = new SoccerPlaceDao().selectAllSoccerPlaceList(conn);
		
		JDBCTemplate.close(conn);
		
		return list;
	}

	//예약 확정 데이터 보내기 
	public int SoccerPlaceReservation(int userNo, String timeNo, String placeNo, String reservationDate) {

		Connection conn = JDBCTemplate.getConnection();
		
		int result = new SoccerPlaceDao().SoccerPlaceReservation(conn, userNo, timeNo, placeNo, reservationDate);
		
		
		if(result > 0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}

	//페이징처리
	public int PlaceAllListCount() {
		
		Connection conn = JDBCTemplate.getConnection();
		
		//게시글 개수 받아줄 변수 준비
		int count = new SoccerPlaceDao().PlaceAllListCount(conn);
		
		JDBCTemplate.close(conn);
		
		return count; //게시글 개수 돌려주기
	}



}
