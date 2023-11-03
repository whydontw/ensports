package com.ensport.admin.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.ensport.admin.model.dao.AdminDao;
import com.ensport.admin.model.vo.Attachment;
import com.ensport.admin.model.vo.Place;
import com.ensport.common.JDBCTemplate;

public class AdminService {

	public int placeEnroll(Place p, ArrayList<Attachment> list) {

		Connection conn = JDBCTemplate.getConnection();
		
		int result = new AdminDao().placeEnroll(p,conn);
		
		int result2 = new AdminDao().insertPlacePhoto(list,conn);
		
		if(result*result2 > 0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		
		return result;
	}

	public ArrayList<Place> selectPlaceList() {

		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Place> list = new AdminDao().selectPlaceList(conn);
		
		JDBCTemplate.close(conn);
		
		return list;
	}

}
