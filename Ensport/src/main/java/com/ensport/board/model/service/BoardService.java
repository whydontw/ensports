package com.ensport.board.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.ensport.board.model.dao.BoardDao;
import com.ensport.board.model.vo.Attachment;
import com.ensport.board.model.vo.Board;
import com.ensport.common.JDBCTemplate;
import com.ensport.common.model.vo.PageInfo;

public class BoardService {

	public ArrayList<Board> selectBoardList(PageInfo pi) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Board> list = new BoardDao().selectBoardList(conn,pi);
		
		JDBCTemplate.close(conn);
		
		return list;
	}

	public int insertBoard(Board b, Attachment at) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		//게시글 정보 등록부터 하기 (첨부파일은 해당 게시글 번호를 갖고 추가되어야하기 때문에)
		int result = new BoardDao().insertBoard(conn,b);
		
		//첨부파일이 있다면 등록하기
		int result2 = 1; //만약 첨부파일이 없다면 아래 조건식을 보드처리로만 확인해야하니 1로 초기화
		
		if(at!=null) { 
			result2 = new BoardDao().insertAttachment(conn,at); //요청시 0으로되면 조건식 판별
		}
		
		if(result*result2>0) { //성공시 (두 dml다 0이 아닌경우 )
			JDBCTemplate.commit(conn);
		}else { //둘 중 하나라도 0으로 돌아오면 실패 (되돌리기)
			JDBCTemplate.rollback(conn);
		}
		
		return result*result2; //처리결과 리턴
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


}
