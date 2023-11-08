package com.ensport.review.model.vo;


//리뷰 Review
public class Review {
	
	private int reviewNo;
	private int userNo;
	private int placeNo;
	private int score;
	private String content;
	
	
	
	public Review() {
		super();
	}
	
	public Review(int reviewNo, int userNo, int placeNo, int score, String content) {
		super();
		this.reviewNo = reviewNo;
		this.userNo = userNo;
		this.placeNo = placeNo;
		this.score = score;
		this.content = content;
	}
	
	

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getPlaceNo() {
		return placeNo;
	}

	public void setPlaceNo(int placeNo) {
		this.placeNo = placeNo;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	
	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", userNo=" + userNo + ", placeNo=" + placeNo + ", score=" + score
				+ ", content=" + content + "]";
	}
	
	

}
