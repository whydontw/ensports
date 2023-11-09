package com.ensport.reservation.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.ensport.common.JDBCTemplate;
import com.ensport.common.model.vo.PageInfo;
import com.ensport.reservation.model.vo.Reservation;

public class ReservationDao {
	
	private Properties prop = new Properties();

	// 매퍼파일 읽어오는 작업 (기본생성자에 추가)
	// DAO로 메소드를 호출하는 시점에서 파일이 읽힌다.
	public ReservationDao() {

		try {
			String filePath = ReservationDao.class.getResource("/db/sql/reservation-mapper.xml").getPath();
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	//내 Reservation 게시글 수
	public int reservationListCount(Connection conn, int userNo) {
		
		// SELECT (조회)
		int count = 0;
		ResultSet rset = null;
		PreparedStatement pstmt = null;

		String sql = prop.getProperty("reservationListCount");
		

		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				// 조회된 게시글 개수
				count = rset.getInt("COUNT");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return count;
	}
	
	
	
	
	//마이페이지 Reservation List
	public ArrayList<Reservation> selectMyReservationList(Connection conn, int userNo, PageInfo pi) {

		// 준비물
		ArrayList<Reservation> revList = new ArrayList<Reservation>();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		Reservation rev = null;

		String sql = prop.getProperty("selectMyReservationList");
		
		// 1페이지 : 1~10 / 5페이지 : 41~50 / 10페이지 91~100
		// 2페이지 : 11~20
		 int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		 int endRow = pi.getCurrentPage() * pi.getBoardLimit();

		 
		try {
			
			pstmt = conn.prepareStatement(sql);

			
			pstmt.setInt(1, userNo);
			
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				
				rev = new Reservation();
				
				
				
				
				revList.add(rev);
			}
			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}

		return revList;
	}


	//총인원
	public int selectAll(Connection conn, int placeNo, String reservationDate, int timeNo) {
		
		int total = 0;
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectAll");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, placeNo);
			pstmt.setString(2, reservationDate );
			pstmt.setInt(3, timeNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				total = rset.getInt("USERCAPACITY");
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		System.out.println("dao"+ total);
		
		
		return total;
	}


	//참여자
	public int selectPlayer(Connection conn, int placeNo, String reservationDate, int timeNo) {
		
		int player = 0;
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectPlayer");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, placeNo);
			pstmt.setString(2, reservationDate );
			pstmt.setInt(3, timeNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				player = rset.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		System.out.println("dao"+ player);
		
		
		return player;
	}
	
	
	
	
	

}
