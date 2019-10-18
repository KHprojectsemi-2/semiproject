package board.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDao;
import board.model.vo.Board;
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

}
