package com.ensport.member.model.dao;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.ensport.common.JDBCTemplate;
import com.ensport.member.model.vo.Member;

public class MemberDao {

	
	//쿼리구문 파일 xml 파일 읽어오는 작업
	
	private Properties prop = new Properties();
	
	//기본생성자가 생성되는 시점(메소드 호출 시점)에 파일 읽어오기
	public MemberDao() {
		
		//컴파일된 파일 기준으로 읽어올 xml파일 경로 찾기
		String filePath = MemberDao.class.getResource("/db/sql/member-mapper.xml").getPath();
		
		try {
			//찾은 경로를 넣고 해당 파일 읽어오기
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	//회원가입
	public int insertMember(Connection conn, Member m) {
		
		int result = 0;

		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertMember");
		
		try {
			
			//pstmt 생성하기(미완성 sql구문 전달하며)
			pstmt = conn.prepareStatement(sql);
			
			
			System.out.println(m.getUserName());
			
			//각 위치홀더에 데이터 넣어주기
			pstmt.setString(1, m.getUserId());
			pstmt.setString(2, m.getUserPassword());
			pstmt.setString(3, m.getUserNickname());
			pstmt.setString(4, m.getUserName());
			pstmt.setString(5, m.getEmail());
			pstmt.setString(6, m.getPhone());
			pstmt.setString(7, m.getGender());
			pstmt.setString(8, m.getAddress());
			pstmt.setString(9, m.getPrefer());
			
			//sql구문 실행 후 DML 구문이니 처리된 행 수 돌려받기
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			//자원 반납하기
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}

}
