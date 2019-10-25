package board.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
import static common.JDBCTemplate.*;

import board.model.vo.Board;
import board.model.vo.QuestionBoard;
import board.model.vo.ReportBoard;
import user.model.vo.User;

public class BoardDao {
	
	Properties prop = new Properties();
	
	public BoardDao() {
		String fileName = BoardDao.class.getResource("/sql/board/board-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Board> selectList(Connection conn, int currentPage, int limit) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<Board> list = null;
		
		String query = prop.getProperty("selectList");
		
		// 쿼리문 실행시 조건절에 넣을 변수들(rownum에 대한 조건 시 필요)
		int startRow = (currentPage - 1) * limit + 1;
		// ex) 2Page면 시작 번호가 11번 일 것이다.
		int endRow = startRow + limit - 1;
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rs = pstmt.executeQuery();
			
			list = new ArrayList<Board>();
			
			while(rs.next()) {		
				Board b = new Board(rs.getInt("boardNo"),
						  rs.getString("userId"),
						  rs.getString("title"),
						  rs.getString("content"),
						  rs.getDate("create_date"));
				list.add(b);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		return list;
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
				listCount=rs.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rs);
		}
		
		return listCount;
	}

	public int insertQBoard(Connection conn, QuestionBoard qb) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertQBoard");
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, qb.getUserId());
			pstmt.setString(2, qb.getTitle());
			pstmt.setString(3, qb.getContent());
			pstmt.setString(4, qb.getCategory());
			
			result = pstmt.executeUpdate();
				
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int insertRBoard(Connection conn, ReportBoard rb) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertRBoard");
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, rb.getUserId());
			pstmt.setString(2, rb.getTitle());
			pstmt.setString(3, rb.getContent());
			pstmt.setString(4, rb.getRepUser());
			pstmt.setString(5, rb.getRepType());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e1) {
			e1.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public User checkRepUser(Connection conn, String repUserId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		User user = null;
		String query = prop.getProperty("checkRepUser");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, repUserId);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				user = new User(rs.getString("USERID"),
									 rs.getInt("USERNO"),
									 rs.getString("USERPWD"),
									 rs.getString("USERNAME"),
									 rs.getString("USERGENDER"),
									 rs.getString("USEREMAIL"),
									 rs.getDate("USERBIRTH"),
									 rs.getString("USERPHONE"),
									 rs.getString("USERPOSTCODE"),
									 rs.getString("USERADDRESS"),
									 rs.getString("USERIMAGE"),
									 rs.getInt("REPORTED"),
									 rs.getDate("JOINDATE"),
									 rs.getDate("LATESTDATE"),
									 rs.getString("USERSTATUS"));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return user;
	}

	public int deleteFAQ(Connection conn, int bNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("deleteFAQ");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, bNo);	
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e1) {
			e1.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public Board selectFAQ(Connection conn, int bNo) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Board b = null;
		
		String query = prop.getProperty("selectFAQ");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, bNo);
			
			b = new Board();
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				b = new Board(rs.getInt("BOARDNO"),
							  rs.getString("USERID"),
							  rs.getString("BOARDTYPE"),
							  rs.getString("TITLE"),
							  rs.getString("CONTENT"),
							  rs.getDate("CREATE_DATE"),
							  rs.getString("BOARDSTATUS"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(pstmt);
			close(rs);
		}
		
		return b;
	}

	public int createFAQ(Connection conn, Board b) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("createFAQ");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, b.getUserId());
			pstmt.setString(2, b.getTitle());
			pstmt.setString(3, b.getContent());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e1) {
			e1.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int modifyFAQ(Connection conn, Board b) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("modifyFAQ");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, b.getTitle());
			pstmt.setString(2, b.getContent());
			pstmt.setInt(3, b.getBoardNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e1) {
			e1.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public ArrayList<QuestionBoard> questionList(Connection conn, int currentPage, int limit) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<QuestionBoard> list = null;
		
		String query = prop.getProperty("selectQList");
			
		int startRow = (currentPage - 1) * limit + 1;
		int endRow = startRow + limit - 1;
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rs = pstmt.executeQuery();
			
			list = new ArrayList<QuestionBoard>();
			
			while(rs.next()) {		
				QuestionBoard b = new QuestionBoard(rs.getInt("boardno"),
													rs.getString("userid"),
													rs.getString("boardtype"),
													rs.getString("title"),
													rs.getString("content"),
													rs.getDate("create_date"),
													rs.getString("boardstatus"),
													rs.getString("re_content"),
													rs.getString("category"),
													rs.getString("re_boardstatus"));
						  
				list.add(b);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		return list;
	}

	public int getQListCount(Connection conn) {
		Statement stmt = null;
		ResultSet rs = null;
		
		int listCount = 0;
		
		String query = prop.getProperty("getQListCount");
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			
			if(rs.next()) {
				listCount=rs.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rs);
		}
		
		return listCount;
	}
	

}
