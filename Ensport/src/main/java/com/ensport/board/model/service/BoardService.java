package com.ensport.board.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.ensport.board.model.dao.BoardDao;
import com.ensport.board.model.vo.Attachment;
import com.ensport.board.model.vo.Board;
import com.ensport.board.model.vo.Reply;
import com.ensport.common.JDBCTemplate;
import com.ensport.common.model.vo.PageInfo;

public class BoardService {

	public ArrayList<Board> selectBoardList(PageInfo pi) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Board> list = new BoardDao().selectBoardList(conn,pi);
		
		JDBCTemplate.close(conn);
		
		return list;
	}

	public int insertBoard(Board b, Attachment at, ArrayList<Attachment> list) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		//게시글 정보 등록부터 하기 (첨부파일은 해당 게시글 번호를 갖고 추가되어야하기 때문에)
		int result = new BoardDao().insertBoard(conn,b);
		
		//첨부파일이 있다면 등록하기
		int result2 = 1; //만약 첨부파일이 없다면 아래 조건식을 보드처리로만 확인해야하니 1로 초기화
		
		int result3 = 1;
		
		if(at!=null) { 
			result2 = new BoardDao().insertAttachment(conn,at); //요청시 0으로되면 조건식 판별
		}
		
		result3 = new BoardDao().insertAttachmentList(conn, list);
		
		if(result*result2*result3>0) { //성공시 (두 dml다 0이 아닌경우 )
			JDBCTemplate.commit(conn);
		}else { //둘 중 하나라도 0으로 돌아오면 실패 (되돌리기)
			JDBCTemplate.rollback(conn);
		}
		
		return result*result2*result3; //처리결과 리턴
	}

	public int increaseCount(int boardNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new BoardDao().increaseCount(conn,boardNo);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}

	public Board selectBoard(int boardNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		Board b = new BoardDao().selectBoard(conn,boardNo);
		
		JDBCTemplate.close(conn);
		
		return b;
	}

	public Attachment selectAttachment(int boardNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		Attachment a = new BoardDao().selectAttachment(conn,boardNo);
		
		JDBCTemplate.close(conn);
		
		return a;
	}

	public int listCount() {
		
		Connection conn = JDBCTemplate.getConnection();
		
		//게시글 개수 받아줄 변수 준비
		int count = new BoardDao().listCount(conn);
		
		JDBCTemplate.close(conn);
		
		return count; //게시글 개수 돌려주기
	}

	public int updateBoard(Board b, Attachment at) {
		Connection conn = JDBCTemplate.getConnection();
		
		//게시글 정보 수정
		int result = new BoardDao().updateBoard(conn,b);
		
		//첨부파일이 있으면 처리 후 값 담길 변수 준비 (없으면 게시글 처리만 하기 위해 1로 초기화)
		int result2 = 1;
		
		//첨부파일이 있다면 수정 또는 추가 작업 수행
		if(at != null) {
			//기존 첨부파일이 있다면 (update) - fileNo가 있는지 확인
			if(at.getAtNo() != 0) {
				result2 = new BoardDao().updateAttachment(conn,at);
			}else {//기존에 첨부파일이 없었다면 - insert
				//기존에 첨부파일 추가 메소드에서는 sql구문의
				//refBno(참조게시글번호) 부분이 currval(현재시퀀스번호)로 들어가있어서 사용할 수 없다.
				//controller에서 가져온 boardNo를 넣어서 추가하여야한다.
				
				result2 = new BoardDao().insertNewAttachment(conn,at);
			}
			
		}
		
		//게시글 수정과 첨부파일 수정 또는 추가 작업중 하나라도 잘못되었다면
		//되돌리기 작업을 수행하여야한다. 
		
		if(result*result2>0) {//둘 중 하나라도 0이면 0일테니 성공여부 확인가능
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		
		return result*result2;
	}

	public int deleteBoard(int boardNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new BoardDao().deleteBoard(conn,boardNo);
		
		if(result>0) {
			JDBCTemplate.close(conn);
		}else {
			JDBCTemplate.commit(conn);
		}
		
		return result;
	}

	public int insertReply(Reply r) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new BoardDao().insertReply(conn,r);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
				
		return result;
	}

	public ArrayList<Reply> selectReplyList(int bno) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Reply> list = new BoardDao().selectReplyList(conn,bno);
		
		JDBCTemplate.close(conn);
		
		return list;
	}

	public ArrayList<Attachment> selectAttachmentList(int boardNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Attachment> list = new BoardDao().selectAttachmentList(conn, boardNo);
		
		JDBCTemplate.close(conn);
		
		return list;
	}

	public int deleteAttachment(int boardNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new BoardDao().deleteAttachment(conn,boardNo);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}

	
	public int deleteReply(int replyNo) {

		Connection conn = JDBCTemplate.getConnection();
		
		int result = new BoardDao().deleteReply(replyNo,conn);
		
		
		if(result > 0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}

	public int updateReply(int replyNo, String content) {

		Connection conn = JDBCTemplate.getConnection();
		
		int result = new BoardDao().updateReply(replyNo,content,conn);
		
		
		if(result > 0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}

}
