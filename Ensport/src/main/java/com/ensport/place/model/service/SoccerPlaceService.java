package com.ensport.place.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.ensport.admin.model.vo.Attachment;
import com.ensport.common.JDBCTemplate;
import com.ensport.place.model.dao.SoccerPlaceDao;
import com.ensport.place.model.vo.SoccerPlace;

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



}
