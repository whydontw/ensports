package com.ensport.reservation.model.vo;

import java.util.Date;

//예약[RESERVATION]
public class Reservation {
	
	private int reservationNo;
	private int timeNo;
	private int placeNo;
	private String reservationType;
	private Date reservationDate;
	private String userCapacity;
	private String genderType;
	
	
	
	
	public Reservation() {
		super();
	}


	public Reservation(int reservationNo, int timeNo, int placeNo, String reservationType, Date reservationDate,
			String userCapacity, String genderType) {
		super();
		this.reservationNo = reservationNo;
		this.timeNo = timeNo;
		this.placeNo = placeNo;
		this.reservationType = reservationType;
		this.reservationDate = reservationDate;
		this.userCapacity = userCapacity;
		this.genderType = genderType;
	}


	
	
	public int getReservationNo() {
		return reservationNo;
	}


	public void setReservationNo(int reservationNo) {
		this.reservationNo = reservationNo;
	}


	public int getTimeNo() {
		return timeNo;
	}


	public void setTimeNo(int timeNo) {
		this.timeNo = timeNo;
	}


	public int getPlaceNo() {
		return placeNo;
	}


	public void setPlaceNo(int placeNo) {
		this.placeNo = placeNo;
	}


	public String getReservationType() {
		return reservationType;
	}


	public void setReservationType(String reservationType) {
		this.reservationType = reservationType;
	}


	public Date getReservationDate() {
		return reservationDate;
	}


	public void setReservationDate(Date reservationDate) {
		this.reservationDate = reservationDate;
	}


	public String getUserCapacity() {
		return userCapacity;
	}


	public void setUserCapacity(String userCapacity) {
		this.userCapacity = userCapacity;
	}


	public String getGenderType() {
		return genderType;
	}


	public void setGenderType(String genderType) {
		this.genderType = genderType;
	}


	@Override
	public String toString() {
		return "Reservation [reservationNo=" + reservationNo + ", timeNo=" + timeNo + ", placeNo=" + placeNo
				+ ", reservationType=" + reservationType + ", reservationDate=" + reservationDate + ", userCapacity="
				+ userCapacity + ", genderType=" + genderType + "]";
	}
	

}
