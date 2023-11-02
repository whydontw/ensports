package com.ensport.member.model.service;

import java.sql.Connection;

import com.ensport.common.JDBCTemplate;
import com.ensport.member.model.dao.MemberDao;
import com.ensport.member.model.vo.Member;

public class MemberService {
	
	
	
	//로그인 
	public Member loginMember(String userId, String userPwd) {

		Connection conn = JDBCTemplate.getConnection();
		Member m = new MemberDao().loginMember(conn, userId, userPwd);
		
		JDBCTemplate.close(conn);
		
		return m;
	}
	
	
	
	public int insertMember(Member m) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new MemberDao().insertMember(conn, m);
		
		if(result > 0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	
	}

	
	
	public int idDuplCheck(String checkId) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int count = new MemberDao().idDuplCheck(conn, checkId);
		
		JDBCTemplate.close(conn);
		
		return count;
	}
	
	
	public int phoneDuplCheck(String checkPhone) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int count = new MemberDao().phoneDuplCheck(conn, checkPhone);
		
		JDBCTemplate.close(conn);
		
		return count;
	}



}
