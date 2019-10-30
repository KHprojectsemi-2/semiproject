package user.model.service;
import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.vo.Board;
import board.model.vo.QuestionBoard;
import user.model.dao.MyReportDao;
public class MyReportService {
	
	public MyReportService() {
		
		
		
	}

	public int getListCount() {
		Connection conn = getConnection();
		
		int listCount = new MyReportDao().getListCount(conn);
		
		close(conn);
		
		return listCount;
	}

	public ArrayList<QuestionBoard> selectList(int currentPage, int limit, String userId) {
		Connection conn = getConnection();
		
		ArrayList<QuestionBoard> mrlist = new MyReportDao().selectList(conn,currentPage,limit,userId);
		
		close(conn);
		return mrlist;
	}

	public QuestionBoard selectView(int boardNo) {
		Connection conn = getConnection();
		
		QuestionBoard b = new MyReportDao().selectView(conn,boardNo);
		
		close(conn);
		return b;
	}

}
