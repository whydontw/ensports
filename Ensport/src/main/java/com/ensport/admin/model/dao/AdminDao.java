package com.ensport.admin.model.dao;

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
import com.ensport.admin.model.vo.Place;
import com.ensport.admin.model.vo.QA;
import com.ensport.common.JDBCTemplate;

public class AdminDao {

	public Properties prop = new Properties();
	
	public AdminDao() {
		
		String filePath = AdminDao.class.getResource("/db/sql/admin-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public int placeEnroll(Place p, Connection conn) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("placeEnroll");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1,p.getPlaceName());
			pstmt.setString(2,p.getPlace_size());
			pstmt.setString(3,p.getParking_yn());
			pstmt.setInt(4,p.getMax_capacity());
			pstmt.setInt(5,Integer.parseInt(p.getCategoryNo()));
			pstmt.setString(6,p.getLocalName());
			pstmt.setString(7,p.getPlace_sub_info());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		
		return result;
		
	}
	
	
	
	public int insertPlacePhoto(ArrayList<Attachment> list, Connection conn) {
		
		int result = 1;
		PreparedStatement pstmt = null;
		
		
		String sql = prop.getProperty("insertPlacePhoto");
		
		try {
			for(Attachment a : list) {
				pstmt = conn.prepareStatement(sql);
			
				pstmt.setString(1,a.getOriginName());
				pstmt.setString(2,a.getChangeName());
				pstmt.setString(3,a.getFilePath());
				pstmt.setInt(4, a.getFileLevel());

				
				result *= pstmt.executeUpdate();
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			result = 0;
			e.printStackTrace();
		}
		
		return result;
	}
	
	public ArrayList<Place> selectPlaceList(Connection conn) {

		ArrayList<Place> list = new ArrayList<>();
		ResultSet rset = null;
		Statement stmt = null;
		
		String sql = prop.getProperty("selectPlaceList");
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				
				list.add(new Place(rset.getInt("PLACE_NO")
								  ,rset.getString("PLACE_NAME")
								  ,rset.getString("PLACE_SUB_INFO")
								  ,rset.getString("PLACE_SIZE")
								  ,rset.getString("PARKING_YN")
								  ,rset.getDate("PLACE_DATE")
								  ,rset.getInt("PLACE_COUNT")
								  ,rset.getString("PLACE_START_TIME")
								  ,rset.getString("PLACE_END_TIME")
								  ,rset.getInt("MAX_CAPACITY")
								  ,rset.getString("CATEGORY_NAME")
								  ,rset.getString("LOCAL_NAME")));
				
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


	public int insertQA(int userNo, String subject, String message, Connection conn) {

		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertQA");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			pstmt.setString(2, subject);
			pstmt.setString(3, message);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}


	public ArrayList<QA> selectQAList(Connection conn) {

		ArrayList<QA> list = new ArrayList<>();
		ResultSet rset = null;
		Statement stmt = null;
		
		String sql = prop.getProperty("selectQAList");
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			
			while(rset.next()) {
				list.add(new QA(rset.getInt("QA_NO")
								,rset.getString("USER_NICKNAME")
								,rset.getString("QA_TITLE")
								,rset.getString("QA_CONTENT")
								,rset.getDate("CREATE_DATE")));
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
