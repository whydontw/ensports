package com.ensport.matching.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.ensport.common.JDBCTemplate;
import com.ensport.matching.model.vo.SoccerMatching;

public class SoccerMatchingDao {
	
	private Properties prop = new Properties();
	
	public SoccerMatchingDao() {
		String filePath = SoccerMatchingDao.class.getResource("/db/sql/matching-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	//축구 경기 매칭 목록 조회
	public ArrayList<SoccerMatching> selectSoccerMatchingList(Connection conn) {
		
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		//게시글 목록 조회 리스트
		ArrayList<SoccerMatching> slist = new ArrayList<SoccerMatching>();
		
		SoccerMatching sm = null;
		
		String sql = prop.getProperty("selectSoccerMatchingList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
//			pstmt.setInt(1, 1);
			pstmt.setString(1, "서울");
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				sm = new SoccerMatching(rset.getString("PLACE_NAME") ,rset.getString("FILE_PATH"), rset.getString("CHANGE_NAME"));
				
				slist.add(sm);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		
		return slist;
	}

}
