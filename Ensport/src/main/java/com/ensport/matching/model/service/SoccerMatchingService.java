package com.ensport.matching.model.service;


import java.sql.Connection;
import java.util.ArrayList;

import com.ensport.admin.model.vo.Attachment;

import com.ensport.common.JDBCTemplate;
import com.ensport.matching.model.dao.SoccerMatchingDao;
import com.ensport.matching.model.vo.SoccerMatching;
import com.ensport.place.model.vo.Place;

public class SoccerMatchingService {

	//축국경기매칭 목록 조회
	public ArrayList<SoccerMatching> selectSoccerMatchingList(String localName) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<SoccerMatching> list = new SoccerMatchingDao().selectSoccerMatchingList(conn,localName);
		
		JDBCTemplate.close(conn);
		
		return list;
	}
	
	//조회수 증가 메소드
		public int increaseCount(int placeNo) {
			Connection conn = JDBCTemplate.getConnection();
			
			int result = new SoccerMatchingDao().increaseCount(conn,placeNo);
			
			if(result>0) {
				JDBCTemplate.commit(conn);
			}else {
				JDBCTemplate.rollback(conn);
			}
			
			JDBCTemplate.close(conn);
			return result;
		}

		//게시글 개수 조회 메소드
		public int listCount() {
			
			Connection conn = JDBCTemplate.getConnection();
			
			int count = new SoccerMatchingDao().listCount(conn);
			
			JDBCTemplate.close(conn);
			
			return count;
		}

		//게시판 상세조회 메소드
		public ArrayList<Attachment> selectAttachmentList(int placeNo) {
			
			Connection conn = JDBCTemplate.getConnection();
			
			//이미지가 여러개 일 수 있으니 
			ArrayList<Attachment> list = new SoccerMatchingDao().selectAttachmentLst(conn,placeNo);
			JDBCTemplate.close(conn);
			
			return list;
			
		}

		//경기장 상세보기
		public Place selectPlace(int placeNo) {
			Connection conn = JDBCTemplate.getConnection();
			
			Place p = new SoccerMatchingDao().selectPlace(conn,placeNo);
			
			JDBCTemplate.close(conn);
			return p;
		}

}















