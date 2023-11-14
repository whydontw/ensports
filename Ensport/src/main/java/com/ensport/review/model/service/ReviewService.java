package com.ensport.review.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.ensport.common.JDBCTemplate;
import com.ensport.common.model.vo.PageInfo;
import com.ensport.reservation.model.vo.Reservation;
import com.ensport.review.model.dao.ReviewDao;
import com.ensport.review.model.vo.Review;

public class ReviewService {

	
	
	//마이페이지 내 Review 개수 조회 메소드
	public int reviewListCount(int userNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		//게시글 개수 받아줄 변수 준비
		int count = new ReviewDao().reviewListCount(conn, userNo);
		
		JDBCTemplate.close(conn);
		
		return count; //게시글 개수 돌려주기
	}
	
	
	
	//마이페이지 - Review List 조회
	public ArrayList<Reservation> selectMyReviewList(PageInfo pi, int userNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Reservation> selectMyReviewList = new ReviewDao().selectMyReviewList(conn, userNo, pi);
		
		return selectMyReviewList;
		
	}


	//마이페이지 - 내가 쓴 리뷰 상세보기
	public Review selectMyReviewDetail(int reviewNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		Review reviewDetail = new ReviewDao().selectMyReviewDetail(conn, reviewNo);
		
		return reviewDetail;
		
	}
	
	

}
