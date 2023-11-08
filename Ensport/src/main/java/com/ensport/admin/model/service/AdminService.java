package com.ensport.admin.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.ensport.admin.model.dao.AdminDao;
import com.ensport.admin.model.vo.Attachment;
import com.ensport.admin.model.vo.Place;
import com.ensport.admin.model.vo.QA;
import com.ensport.admin.model.vo.QAComment;
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

	public int insertQA(int userNo, String subject, String message) {

		Connection conn = JDBCTemplate.getConnection();
		
		int result = new AdminDao().insertQA(userNo,subject,message,conn);
		
		
		if(result > 0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		
		return result;

	}

	public ArrayList<QA> selectQAList() {

		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<QA> list = new AdminDao().selectQAList(conn);
		
		JDBCTemplate.close(conn);
		
		return list;
	}

	public QA selectOneQA(int qa_no) {

		Connection conn = JDBCTemplate.getConnection();
		
		QA q = new AdminDao().selectOneQA(conn, qa_no);
		
		JDBCTemplate.close(conn);
		

		return q;
	}

	public int insertQAComment(QAComment qac) {

		Connection conn = JDBCTemplate.getConnection();
		
		int result = new AdminDao().insertQAComment(qac,conn);
		
		
		if(result > 0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		
		return result;

	}

	public QAComment selectOneQAComment(int qa_answer_no) {


		Connection conn = JDBCTemplate.getConnection();
		
		QAComment qac = new AdminDao().selectOneQAComment(conn,qa_answer_no);
		
		JDBCTemplate.close(conn);
		
		return qac;
		
	}

	public int qaCommentUpdate(int qa_answer_no, String qa_answer) {

		Connection conn = JDBCTemplate.getConnection();
		
		int result = new AdminDao().qaCommentUpdate(qa_answer_no,qa_answer,conn);
		
		
		if(result > 0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		
		return result;
	}

	public int qaCommentDelete(int qa_answer_no) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new AdminDao().qaCommentDelete(qa_answer_no,conn);
		
		
		if(result > 0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		
		return result;
	}

}
