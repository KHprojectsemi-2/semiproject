package board.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDao;
import board.model.vo.Board;
import board.model.vo.QuestionBoard;
import board.model.vo.ReportBoard;
import user.model.vo.User;

import static common.JDBCTemplate.*;

public class BoardService {

	// 게시판 조회 리스트
	public ArrayList<Board> selectList(int currentPage, int limit) {
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDao().selectList(conn, currentPage, limit);
		close(conn);
		
		return list;
	}
	
	// 게시판 리스트 갯수 조회
	public int getListCount() {
		Connection conn = getConnection();
		int listCount = new BoardDao().getListCount(conn);
		
		close(conn);
		
		return listCount;
	}

	public int insertQBoard(QuestionBoard qb) {
		Connection conn = getConnection();
		
		int result = new BoardDao().insertQBoard(conn, qb);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public int insertRBoard(ReportBoard rb) {
		Connection conn = getConnection();
		
		int result = new BoardDao().insertRBoard(conn, rb);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public User checkRepUser(String repUserId) {
		Connection conn = getConnection();
		User user = new BoardDao().checkRepUser(conn, repUserId);

		close(conn);
		
		return user;
	}

	public int deleteFAQ(int bNo) {
		Connection conn = getConnection();
		
		int result = new BoardDao().deleteFAQ(conn, bNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public Board selectFAQ(int bNo) {
		Connection conn = getConnection();
		
		Board b = new BoardDao().selectFAQ(conn, bNo);
		close(conn);
		
		return b;
	}

	public int createFAQ(Board b) {
		Connection conn = getConnection();
		
		int result = new BoardDao().createFAQ(conn, b);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public int modifyFAQ(Board b) {
		Connection conn = getConnection();
		int result = new BoardDao().modifyFAQ(conn, b);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public ArrayList<QuestionBoard> questionList(int currentPage, int limit) {
		Connection conn = getConnection();
		
		ArrayList<QuestionBoard> qlist = new BoardDao().questionList(conn, currentPage, limit);
		close(conn);
		
		return qlist;
	}

	public int getQListCount() {
		Connection conn = getConnection();
		int listCount = new BoardDao().getQListCount(conn);
		
		close(conn);
		
		return listCount;
	}

}
