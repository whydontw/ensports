package com.ensport.myplace.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.ensport.common.JDBCTemplate;
import com.ensport.common.model.vo.PageInfo;
import com.ensport.matching.model.dao.SoccerMatchingDao;
import com.ensport.matching.model.vo.SoccerMatching;
import com.ensport.myplace.model.dao.MyPlaceDao;
import com.ensport.qa.model.dao.QaDao;

public class MyPlaceService {

	//경기장 찜 여부 확인하기
	public int selectMyPlaceYn(int userNo, int placeNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int count = new MyPlaceDao().selectMyPlaceYn(conn, userNo, placeNo);
		
		JDBCTemplate.close(conn);
		
		return count;
		
	}

	
	
	//찜하기
	public int addMyPlace(int placeNo, int userNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new MyPlaceDao().addMyPlace(conn, placeNo, userNo);
		
		if(result > 0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		return result;
		
	}


	//찜 해제하기
	public int deleteMyPlace(int placeNo, int userNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new MyPlaceDao().deleteMyPlace(conn, placeNo, userNo);
		
		if(result > 0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		return result;
	}


	//총 찜 개수 조회하기
	public int myPageMyPlaceListCount(int userNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		//게시글 개수 받아줄 변수 준비
		int count = new MyPlaceDao().myPageMyPlaceListCount(conn, userNo);
		
		JDBCTemplate.close(conn);
		
		return count; //게시글 개수 돌려주기
	}


	//찜 경기장 조회하기
	public ArrayList<SoccerMatching> selectMyPlaceList(PageInfo pi, int userNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<SoccerMatching> aList = new MyPlaceDao().selectMyPlaceList(conn, pi, userNo);
		
		JDBCTemplate.close(conn);
		
		return aList;
	}


}
