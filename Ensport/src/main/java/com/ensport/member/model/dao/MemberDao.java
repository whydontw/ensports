package com.ensport.member.model.dao;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
	
	
	//로그인 기능
	public Member loginMember(Connection conn, String userId, String userPwd) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		//회원정보를 담아갈 객체 준비하기
		Member m = null;
		
		//xml 파일에서 키값으로 sql 구문 가져오기
		String sql = prop.getProperty("loginMember");
		
		try {
			//미완성 sql 구문 전달하기
			pstmt = conn.prepareStatement(sql);
			
			//미완성부분 (위치홀더) 채우기
			pstmt.setString(1, userId);			//1번 ?에 userId 넣기
			pstmt.setString(2, userPwd);		//2번 ?에 userPwd 넣기
			
			
			//완성시켰으면 쿼리구문 실행해서 결과값 받아오기
			rset = pstmt.executeQuery();
			
			//조회된 결과는 한 행 또는 없음이므로(userId unique 제약조건) if문으로 조건 확인하기
			if(rset.next()) {	//조회된 결과가 있다면 회원정보 꺼내오기
				
				m = new Member(rset.getInt("USER_NO")
							, rset.getString("USER_ID")
							, rset.getString("USER_PASSWORD")
							, rset.getString("USER_NICKNAME")
							, rset.getString("USER_NAME")
							, rset.getString("EMAIL")
							, rset.getString("PHONE")
							, rset.getDate("ENROLLDATE")
							, rset.getString("GENDER")
							, rset.getString("ADDRESS")
							, rset.getString("PREFER")
							, rset.getString("IMAGES")
							, rset.getString("STATUS")
							);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			//생성의 역순으로 반납하기
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return m;
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


	//아이디 중복 확인
	public int idDuplCheck(Connection conn, String checkId) {
		//숫자를 세어 넣을 변수(아이디 있는지 없는지 판별용)
		int count = 0;
		
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("idDuplCheck");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, checkId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				count = rset.getInt("COUNT");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return count;
	}
	
	
	//전화번호 중복 확인
	public int phoneDuplCheck(Connection conn, String checkPhone) {
		//숫자를 세어 넣을 변수(아이디 있는지 없는지 판별용)
		int count = 0;
		
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("phoneDuplCheck");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, checkPhone);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				count = rset.getInt("COUNT");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return count;
	}

	

	//회원 탈퇴
	public int deleteMember(Connection conn, int userNo, String userPwd) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = prop.getProperty("deleteMember");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			pstmt.setString(2, userPwd);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		
		return result;		//처리된 행 수 돌려주기
	}
	
}
