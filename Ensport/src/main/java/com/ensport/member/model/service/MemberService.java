package com.ensport.member.model.service;

import java.sql.Connection;

import com.ensport.common.JDBCTemplate;
import com.ensport.member.model.dao.MemberDao;
import com.ensport.member.model.vo.Member;

public class MemberService {

	
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

}
