package user.model.dao;
import static common.JDBCTemplate.*;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
import board.model.vo.*;

public class MyReportDao {
	
	private Properties prop = new Properties();
	
	public MyReportDao() {
		String fileName=MyReportDao.class.getResource("/sql/user/user-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int getListCount(Connection conn) {
		Statement stmt = null;
		ResultSet rs = null;
		
		int listCount = 0;
		
		String query = prop.getProperty("getListCount");
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			
			if(rs.next()) {
				listCount = rs.getInt(1);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rs);
		}
		return listCount;
	}

	public ArrayList<QuestionBoard> selectList(Connection conn, int currentPage, int limit, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<QuestionBoard> mrlist = null;
		
		String query = prop.getProperty("selectList");
		
		int startRow = (currentPage-1)*limit + 1;
		int endRow = startRow + limit -1;
		
			try {
				pstmt = conn.prepareStatement(query);
				
				pstmt.setInt(1, startRow);
				pstmt.setInt(2, endRow);
				pstmt.setString(3, userId);
				
				rs=pstmt.executeQuery();
				
				mrlist = new ArrayList<QuestionBoard>();
				
				while(rs.next()) {
					QuestionBoard b = new QuestionBoard(rs.getInt("boardNo"),
										rs.getString("userId"),
										rs.getString("boardType"),
										rs.getString("title"),
										rs.getString("content"),
										rs.getDate("create_Date"),
										rs.getString("boardStatus"),
										rs.getString("re_Content"),
										rs.getString("category"),
										rs.getString("re_BoardStatus"));
						mrlist.add(b);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(rs);
				close(pstmt);
			}
		return mrlist;
	}

	public QuestionBoard selectView(Connection conn, int boardNo) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		QuestionBoard b = new QuestionBoard();
		
		
		String query = prop.getProperty("selectView");
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, boardNo);

			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				b = new QuestionBoard(rs.getInt("boardNo"),
									rs.getString("userId"),
									rs.getString("boardType"),
									rs.getString("title"),
									rs.getString("content"),
									rs.getDate("create_Date"),
									rs.getString("boardStatus"),
									rs.getString("re_Content"),
									rs.getString("category"),
									rs.getString("re_BoardStatus"));
				
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
			System.out.println(b);
		}
		return b;
	}
}
