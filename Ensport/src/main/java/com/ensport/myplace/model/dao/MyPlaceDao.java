package com.ensport.myplace.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.ensport.common.JDBCTemplate;
import com.ensport.common.model.vo.PageInfo;
import com.ensport.matching.model.vo.SoccerMatching;
import com.ensport.qa.model.vo.Qa;

public class MyPlaceDao {
	
	
	private Properties prop = new Properties();

	// 매퍼파일 읽어오는 작업 (기본생성자에 추가)
	// DAO로 메소드를 호출하는 시점에서 파일이 읽힌다.
	public MyPlaceDao() {

		try {
			String filePath = MyPlaceDao.class.getResource("/db/sql/myplace-mapper.xml").getPath();
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	//찜 여부 확인하기
	public int selectMyPlaceYn(Connection conn, int userNo, int placeNo) {
		
		int count = 0;

		ResultSet rset = null;
		
		PreparedStatement pstmt = null;
				
		String sql = prop.getProperty("selectMyPlaceYn");
		
	   try {
	        pstmt = conn.prepareStatement(sql);
	
	        pstmt.setInt(1, placeNo);
	        pstmt.setInt(2, userNo);
	
	        // executeQuery를 사용하여 결과 집합을 받아옵니다.
	        rset = pstmt.executeQuery();
	
	        // 결과 집합에 데이터가 있는 경우 COUNT를 설정
	        if (rset.next()) {
	            count = rset.getInt("COUNT"); // "COUNT(*)" COUNT
	        }
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
	   
	   //개수 반환하기
	   return count;
	}


	//찜하기
	public int addMyPlace(Connection conn, int placeNo, int userNo) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
				
		String sql = prop.getProperty("addMyPlace");
		
	   try {
	        pstmt = conn.prepareStatement(sql);
	
	        pstmt.setInt(1, placeNo);
	        pstmt.setInt(2, userNo);
	
	        //추가된 행 개수 반환하기
	        result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(conn);
		}
	   
	   //개수 반환하기
	   return result;
	   
	}


	//찜 해제하기
	public int deleteMyPlace(Connection conn, int placeNo, int userNo) {
		int result = 0;
		
		PreparedStatement pstmt = null;
				
		String sql = prop.getProperty("deleteMyPlace");
		
	   try {
	        pstmt = conn.prepareStatement(sql);
	
	        pstmt.setInt(1, placeNo);
	        pstmt.setInt(2, userNo);
	
	        //추가된 행 개수 반환하기
	        result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(conn);
		}
	   
	   //개수 반환하기
	   return result;
	}


	//총 찜 개수
	public int myPageMyPlaceListCount(Connection conn, int userNo) {
		
		// SELECT (조회)
		int count = 0;
		ResultSet rset = null;
		PreparedStatement pstmt = null;

		String sql = prop.getProperty("myPlaceListCount");
		
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
	
	
	
	//전체 찜 경기장 리스트 조회하기
	public ArrayList<SoccerMatching> selectMyPlaceList(Connection conn, PageInfo pi, int userNo) {
		
		ResultSet rset =  null;
		PreparedStatement pstmt = null;
		
		ArrayList<SoccerMatching> aList = new ArrayList<>(); 
		SoccerMatching sm = null;
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = pi.getCurrentPage() * pi.getBoardLimit();
		
		String sql = prop.getProperty("selectMyPlaceList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				sm = new SoccerMatching();
				
				sm.setPlaceNo(rset.getInt("PLACE_NO"));
				sm.setPlaceName(rset.getString("PLACE_NAME"));
				sm.setFilePath(rset.getString("FILE_PATH"));
				sm.setChangeName(rset.getString("CHANGE_NAME"));
				sm.setLocalName(rset.getString("CATEGORY_NAME"));	//카테고리 네임을 localName에다가 세팅함
				
				aList.add(sm);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return aList;
	}
	
	
	
}

