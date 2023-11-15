package com.ensport.place.model.dao;

import java.io.FileInputStream;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.ensport.admin.model.vo.Attachment;
import com.ensport.common.JDBCTemplate;
import com.ensport.place.model.dao.SoccerPlaceDao;
import com.ensport.place.model.vo.PlaceTime;
import com.ensport.place.model.vo.SoccerPlace;

public class SoccerPlaceDao {
	
	private Properties prop = new Properties();
	
	public SoccerPlaceDao() {
		String filePath = SoccerPlaceDao.class.getResource("/db/sql/place-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//축구경기장 목록 조회
	public ArrayList<SoccerPlace> selectSoccerPlaceList(Connection conn,String localName) {	
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		//게시글 목록 조회 리스트
		ArrayList<SoccerPlace> list = new ArrayList<SoccerPlace>();
		
		SoccerPlace sp = null;
		
		String sql = prop.getProperty("SoccerPlaceList");
		
		try {
			pstmt = conn.prepareStatement(sql);		
			pstmt.setString(1, localName);
			
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				sp = new SoccerPlace(rset.getInt("PLACE_NO")
										, rset.getString("PLACE_NAME")
										, rset.getString("FILE_PATH")
										, rset.getString("CHANGE_NAME"));
				
				list.add(sp);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		
		
		
		return list;
	}

	//조회수 증가 메소드
	public int increaseCount(Connection conn, int placeNo) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("increaseCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1,placeNo);
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}	
		
		return result;
	}

	//축구시설예약 상세조회 메소드
	public ArrayList<Attachment> selectSoccerAttachmentlist(Connection conn, int placeNo) {
		
		ArrayList<Attachment> list = new ArrayList<>();
		
		ResultSet rset = null;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectAttachment");
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setInt(1, placeNo);
			
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Attachment(rset.getInt("AT_NO")
										,rset.getString("ORIGIN_NAME")
										,rset.getString("CHANGE_NAME")
										,rset.getString("FILE_PATH")));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
			
		}
		
		return list;
	}

	public SoccerPlace selectSoccerPlace(Connection conn, int placeNo) {
		
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		SoccerPlace ssp = null;
		
		String sql = prop.getProperty("selectSoccerPlace");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, placeNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				ssp = new SoccerPlace (rset.getInt("PLACE_NO")
							  ,rset.getString("PLACE_NAME")
							  ,rset.getString("PLACE_SUB_INFO")
							  ,rset.getString("PLACE_SIZE")
							  ,rset.getString("PARKING_YN")
							  ,rset.getDate("PLACE_DATE")
							  ,rset.getString("PLACE_START_TIME")
							  ,rset.getString("PLACE_END_TIME")
							  ,rset.getInt("MAX_CAPACITY")
							  ,rset.getString("CATEGORY_NAME"));
						
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return ssp;
	}

	//경기장 전체조회
	public ArrayList<SoccerPlace> selectAllSoccerPlaceList(Connection conn) {

		ResultSet rset =  null;
		Statement stmt = null;
		
		ArrayList<SoccerPlace> list = new ArrayList<>();
		SoccerPlace sp = null;
		
		String sql = prop.getProperty("selectAllSoccerPlaceList");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				sp = new SoccerPlace(rset.getInt("PLACE_NO")
						, rset.getString("PLACE_NAME")
						, rset.getString("FILE_PATH")
						, rset.getString("CHANGE_NAME"));

				list.add(sp);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(stmt);
		}
		
		
		return list;
	}

	//업데이튼 순 리스트
	public ArrayList<SoccerPlace> selectUpdateSoccerPlaceList(Connection conn) {
		Statement stmt = null;
		
		ResultSet rset = null;
		
		//게시글 목록 조회 리스트		
		ArrayList<SoccerPlace> list = new ArrayList<SoccerPlace>();
		
		SoccerPlace sp = null;
		
		String sql = prop.getProperty("selectUpdateSoccerPlaceList");
		
		try {
			stmt = conn.createStatement();		
			
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				
				sp = new SoccerPlace(rset.getInt("PLACE_NO")
										, rset.getString("PLACE_NAME")
										, rset.getString("FILE_PATH")
										, rset.getString("CHANGE_NAME"));
				
				list.add(sp);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(stmt);
		}
		return list;








	}

	
}
