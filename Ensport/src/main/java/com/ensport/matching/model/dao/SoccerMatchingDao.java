package com.ensport.matching.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.ensport.admin.model.vo.Attachment;
import com.ensport.common.JDBCTemplate;
import com.ensport.matching.model.vo.SoccerMatching;
import com.ensport.place.model.vo.Place;
import com.ensport.review.model.vo.Review;

public class SoccerMatchingDao {
	
	private Properties prop = new Properties();
	
	public SoccerMatchingDao() {
		String filePath = SoccerMatchingDao.class.getResource("/db/sql/matching-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	//축구 경기 매칭 목록 조회
	public ArrayList<SoccerMatching> selectSoccerMatchingList(Connection conn,String localName) {
		
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		//게시글 목록 조회 리스트
		ArrayList<SoccerMatching> slist = new ArrayList<SoccerMatching>();
		
		SoccerMatching sm = null;
		
		String sql = prop.getProperty("selectSoccerMatchingList");
		
		try {
			pstmt = conn.prepareStatement(sql);		
			pstmt.setString(1, localName);
			
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				sm = new SoccerMatching(rset.getInt("PLACE_NO")
										, rset.getString("PLACE_NAME") 
										, rset.getString("FILE_PATH")
										, rset.getString("CHANGE_NAME"));
				
				slist.add(sm);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		
		for(SoccerMatching ssss : slist){
			System.out.println("리스트:" +  ssss);
		};
		
		return slist;
	}
	
	
	
	//조회수 증가 메소드
		public int increaseCount(Connection conn, int placeNo) {
			
			int result = 0;
			
			PreparedStatement pstmt = null;
			
			String sql = prop.getProperty("increaseCount");
			
			try {
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1,placeNo);
				
				result = pstmt.executeUpdate();
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCTemplate.close(pstmt);
			}	
			
			return result;
		}

		//게시글 개수 조회 메소드
		public int listCount(Connection conn) {
		
			int count = 0;
			
			ResultSet rset = null;
			PreparedStatement pstmt =null;
			
			String sql = prop.getProperty("listCount");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, "서울");
				
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					count = rset.getInt(1);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCTemplate.close(rset);
				JDBCTemplate.close(pstmt);
			}
			
			return count;
		}


		//사진 상세조회 메소드
		public ArrayList<Attachment> selectAttachmentLst(Connection conn, int placeNo) {
			
			ArrayList<Attachment> list = new ArrayList<>();
			ResultSet rset = null;
			PreparedStatement pstmt = null;
			
			String sql = prop.getProperty("selectAttachment");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, placeNo);
				
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					list.add(new Attachment(rset.getInt("AT_NO")
										   ,rset.getString("ORIGIN_NAME")
										   ,rset.getString("CHANGE_NAME")
										   ,rset.getString("FILE_PATH")));		
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCTemplate.close(rset);
				JDBCTemplate.close(pstmt);
			}
			
			return list;
		}


		//경기장 상세보기
		public Place selectPlace(Connection conn, int placeNo) {
			
			ResultSet rset = null;
			PreparedStatement pstmt = null;
			Place p = null;
			
			String sql = prop.getProperty("selectPlace");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, placeNo);
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					p = new Place (rset.getInt("PLACE_NO")
								  ,rset.getString("PLACE_NAME")
								  ,rset.getString("PLACE_SUB_INFO")
								  ,rset.getString("PLACE_SIZE")
								  ,rset.getString("PARKING_YN")
								  ,rset.getDate("PLACE_DATE")
								  ,rset.getString("PLACE_START_TIME")
								  ,rset.getString("PLACE_END_TIME")
								  ,rset.getInt("MAX_CAPACITY")
								  ,rset.getString("CATEGORY_NAME"));
							
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCTemplate.close(rset);
				JDBCTemplate.close(pstmt);
			}
			
			return p;
		}


		//전체 리스트 조회
		public ArrayList<SoccerMatching> selectAllSoccerMatchingList(Connection conn) {
			
			ResultSet rset =  null;
			Statement stmt = null;
			
			ArrayList<SoccerMatching> alist = new ArrayList(); 
			SoccerMatching sm = null;
			
			String sql = prop.getProperty("selectAllSoccerMatchingList");
			
			try {
				stmt = conn.createStatement();
				rset = stmt.executeQuery(sql);
				
				while(rset.next()) {
					sm = new SoccerMatching(rset.getInt("PLACE_NO")
							, rset.getString("PLACE_NAME") 
							, rset.getString("FILE_PATH")
							, rset.getString("CHANGE_NAME"));
	
					alist.add(sm);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCTemplate.close(rset);
				JDBCTemplate.close(stmt);
			}
			
			
			return alist;
		}


		//인기 매칭 리스트
		public ArrayList<SoccerMatching> selectMostSoccerMatchingList(Connection conn) {
			Statement stmt = null;
			ResultSet rset = null;
			//게시글 목록 조회 리스트
			ArrayList<SoccerMatching> mlist = new ArrayList<SoccerMatching>();
			
			SoccerMatching sm = null;
			
			String sql = prop.getProperty("selectMainSoccerMatchingList");
			
			try {
				stmt = conn.createStatement();		
				
				rset = stmt.executeQuery(sql);
				
				while(rset.next()) {
					
					sm = new SoccerMatching(rset.getInt("PLACE_NO")
											, rset.getString("PLACE_NAME") 
											, rset.getString("FILE_PATH")
											, rset.getString("CHANGE_NAME"));
					
					mlist.add(sm);
					
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCTemplate.close(rset);
				JDBCTemplate.close(stmt);
			}
			return mlist;
		}


		//예약 확정
		public int soccerMatchingReservation(Connection conn, int userNo, int timeNo, int placeNo,
				String reservationDate) {
			
			int result = 0;
			PreparedStatement pstmt = null;
			
			String sql = prop.getProperty("soccerMatchingReservation");
			
			try {
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, userNo);
				pstmt.setInt(2,timeNo);
				pstmt.setInt(3, placeNo);
				pstmt.setString(4, reservationDate);
				
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCTemplate.close(pstmt);
			}
			
			return result;
		}


		//중복
		public int soccerMatchingDulicate(Connection conn, int userNo, int timeNo, int placeNo,
				String reservationDate) {
			
			int duplicate = 0;
			PreparedStatement pstmt = null;
			String sql = prop.getProperty("soccerMatchingDuplicate");
			ResultSet rset = null;
			try {
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, userNo);
				pstmt.setInt(2, timeNo);
				pstmt.setInt(3,placeNo);
				pstmt.setString(4, reservationDate);
				
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					duplicate = rset.getInt("COUNT");
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCTemplate.close(pstmt);
			}
			
			return duplicate;
		}


		//페이징처리
		public int MatchingAllListCount(Connection conn) {
			//SELECT (조회)
			int count = 0;
			ResultSet rset = null; //조회구문이기 때문에 필요
			Statement stmt = null; //위치홀더 필요없으니 statement 활용
			
			String sql = prop.getProperty("MatchingAllListCount");
			
			try {
				stmt = conn.createStatement();
				
				//개수 조회
				rset = stmt.executeQuery(sql);
				
				if(rset.next()) {
					//조회된 게시글 개수
					count = rset.getInt("COUNT");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCTemplate.close(rset);
				JDBCTemplate.close(stmt);
			}
			
			return count; //게시글 개수 돌려주기
		
		}


		//리뷰 리스트
		public ArrayList<Review> selectReviewList(Connection conn, int pno) {
			
			ResultSet rset = null;
			ArrayList<Review> rlist = new ArrayList<Review>();
			PreparedStatement pstmt = null;
			String sql = prop.getProperty("selectReviewList");
			
			try {
				pstmt = conn.prepareStatement(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return null;
		}


	

	


		
}



















