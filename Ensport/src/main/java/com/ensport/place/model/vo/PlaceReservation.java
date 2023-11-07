package com.ensport.place.model.vo;

import java.util.Date;

public class PlaceReservation {
	
		private int reservationNo;		//	RESERVATION_NO
		private int timeNo;		//	TIME_NO
		private int placeNo;		//	PLACE_NO
		private String reservationType;		//	RESERVATION_TYPE
		private Date reservationDate;		//	RESERVATION_DATE
		private String userCapacity;		//	USERCAPACITY
		private String userNo;		//	USER_NO
		private String genderType;		//	GENDER_TYPE
		
		public PlaceReservation() {
			super();
		}

		public PlaceReservation(int reservationNo, int timeNo, int placeNo, String reservationType,
				Date reservationDate, String userCapacity, String userNo, String genderType) {
			super();
			this.reservationNo = reservationNo;
			this.timeNo = timeNo;
			this.placeNo = placeNo;
			this.reservationType = reservationType;
			this.reservationDate = reservationDate;
			this.userCapacity = userCapacity;
			this.userNo = userNo;
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

		public String getUserNo() {
			return userNo;
		}

		public void setUserNo(String userNo) {
			this.userNo = userNo;
		}

		public String getGenderType() {
			return genderType;
		}

		public void setGenderType(String genderType) {
			this.genderType = genderType;
		}

		@Override
		public String toString() {
			return "PlaceReservation [reservationNo=" + reservationNo + ", timeNo=" + timeNo + ", placeNo=" + placeNo
					+ ", reservationType=" + reservationType + ", reservationDate=" + reservationDate
					+ ", userCapacity=" + userCapacity + ", userNo=" + userNo + ", genderType=" + genderType + "]";
		}
		

}
