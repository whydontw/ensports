package com.ensport.matching.model.service;


import java.sql.Connection;
import java.util.ArrayList;

import com.ensport.common.JDBCTemplate;
import com.ensport.matching.model.dao.SoccerMatchingDao;
import com.ensport.matching.model.vo.SoccerMatching;

public class SoccerMatchingService {

	//축국경기매칭 목록 조회
	public ArrayList<SoccerMatching> selectSoccerMatchingList() {
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<SoccerMatching> list = new SoccerMatchingDao().selectSoccerMatchingList(conn);
		
		JDBCTemplate.close(conn);
		
		return list;
	}

}
