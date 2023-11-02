package com.ensport.board.model.vo;

import java.sql.Date;

public class Attachment {
	
	private int atNo;
	private int boardNo;
	private String originName;
	private String changeName;
	private Date uploadDate;
	private String filePath;
	
	public Attachment() {
		super();
	}

	public Attachment(int atNo, int boardNo, String originName, String changeName, Date uploadDate, String filePath) {
		super();
		this.atNo = atNo;
		this.boardNo = boardNo;
		this.originName = originName;
		this.changeName = changeName;
		this.uploadDate = uploadDate;
		this.filePath = filePath;
	}

	public int getAtNo() {
		return atNo;
	}

	public void setAtNo(int atNo) {
		this.atNo = atNo;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public Date getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	@Override
	public String toString() {
		return "Attachment [atNo=" + atNo + ", boardNo=" + boardNo + ", originName=" + originName + ", changeName="
				+ changeName + ", uploadDate=" + uploadDate + ", filePath=" + filePath + "]";
	}
	
	
}
