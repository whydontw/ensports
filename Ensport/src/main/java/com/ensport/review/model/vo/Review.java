package com.ensport.review.model.vo;


import java.sql.Date;



//리뷰 Review
public class Review {
	
	private int reviewNo;
	private int playerNo;
	private int score;

	private String content;
	private Date createDate;
	private String status;

	private String reviewWriter;
	
	
	





	public Review(int reviewNo, int score, String content, Date createDate, String reviewWriter) {
		super();
		this.reviewNo = reviewNo;
		this.score = score;
		this.content = content;
		this.createDate = createDate;
		this.reviewWriter = reviewWriter;
	}



	public String getReviewWriter() {
		return reviewWriter;
	}



	public void setReviewWriter(String reviewWriter) {
		this.reviewWriter = reviewWriter;
	}



	public Review(String reviewWriter) {
		super();
		this.reviewWriter = reviewWriter;
	}



	public Review(int reviewNo, int playerNo, int score, String content, Date createDate, String status,
			String reviewWriter) {
		super();
		this.reviewNo = reviewNo;
		this.playerNo = playerNo;
		this.score = score;
		this.content = content;
		this.createDate = createDate;
		this.status = status;
		this.reviewWriter = reviewWriter;
	}



	public Review() {
		super();
	}
	
	

	public Review(int reviewNo, int playerNo, int score, String content, Date createDate) {
		super();
		this.reviewNo = reviewNo;
		this.playerNo = playerNo;
		this.score = score;
		this.content = content;
		this.createDate = createDate;
	}



	public Review(int reviewNo, int playerNo, int score, String content, Date createDate, String status) {

		super();
		this.reviewNo = reviewNo;
		this.playerNo = playerNo;
		this.score = score;

		this.content = content;


		this.createDate = createDate;
		this.status = status;
	}


	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public int getPlayerNo() {
		return playerNo;
	}
	public void setPlayerNo(int playerNo) {
		this.playerNo = playerNo;
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
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {

		return "Review [reviewNo=" + reviewNo + ", playerNo=" + playerNo + ", score=" + score + ", content=" + content
				+ ", createDate=" + createDate + ", status=" + status + "]";
	}

	
	
	
	

}
