package com.ensport.board.model.vo;

public class Reply {
	
	private int replyNo;
	private int boardNo;
	private int userNo;
	private String replyContent;
	private int likeNum;
	private int unlikeNum;
	private String status;
	
	public Reply() {
		super();
	}

	public Reply(int replyNo, int boardNo, int userNo, String replyContent, int likeNum, int unlikeNum, String status) {
		super();
		this.replyNo = replyNo;
		this.boardNo = boardNo;
		this.userNo = userNo;
		this.replyContent = replyContent;
		this.likeNum = likeNum;
		this.unlikeNum = unlikeNum;
		this.status = status;
	}

	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public int getLikeNum() {
		return likeNum;
	}

	public void setLikeNum(int likeNum) {
		this.likeNum = likeNum;
	}

	public int getUnlikeNum() {
		return unlikeNum;
	}

	public void setUnlikeNum(int unlikeNum) {
		this.unlikeNum = unlikeNum;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Reply [replyNo=" + replyNo + ", boardNo=" + boardNo + ", userNo=" + userNo + ", replyContent="
				+ replyContent + ", likeNum=" + likeNum + ", unlikeNum=" + unlikeNum + ", status=" + status + "]";
	}
	
	
}
