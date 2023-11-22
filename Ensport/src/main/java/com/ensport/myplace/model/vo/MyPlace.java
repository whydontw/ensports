package com.ensport.myplace.model.vo;

public class MyPlace {
	
	
	private int myplaceNo;
	private String placeNo;
	private int userNo;

	
	public MyPlace() {
		super();
	}
	public MyPlace(int myplaceNo, String placeNo, int userNo) {
		super();
		this.myplaceNo = myplaceNo;
		this.placeNo = placeNo;
		this.userNo = userNo;
	}
	
	
	public int getMyplaceNo() {
		return myplaceNo;
	}
	public void setMyplaceNo(int myplaceNo) {
		this.myplaceNo = myplaceNo;
	}
	public String getPlaceNo() {
		return placeNo;
	}
	public void setPlaceNo(String placeNo) {
		this.placeNo = placeNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	
	@Override
	public String toString() {
		return "MyPlace [myplaceNo=" + myplaceNo + ", placeNo=" + placeNo + ", userNo=" + userNo + "]";
	}
	
}
