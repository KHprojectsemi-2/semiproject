package bbs.model.dao;

//Dao클래스 처음 만들면 이거 먼저!!
import static common.JDBCTemplate.close;

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


import bbs.model.vo.Bbs;


public class BbsDao {
	Properties prop = new Properties();

	public BbsDao() {
		String fileName = BbsDao.class.getResource("/sql/board/bbs-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {		
			e.printStackTrace();
		} catch (IOException e) {	
			e.printStackTrace();
		}
	}

	public int getListCnt(Connection conn) {
		Statement stmt = null;
		ResultSet rs = null;
		
		int listCnt = 0;
		
		String query = prop.getProperty("getListCnt");
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			
			if(rs.next()) {
				listCnt=rs.getInt(1);	// 쿼리에서의 resultSet 컬럼 값(count(*))을 뽑아내서 int listCount에 담음
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(stmt);
			close(rs);
		}
		return listCnt;
	}

	public ArrayList<Bbs> selectList(Connection conn, int currentPage, int limit) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<Bbs>list = null;
		
		String query = prop.getProperty("selectList");
		
		// 쿼리문 실행시 조건절에 넣을 변수들(rownum에 대한 조건 시 필요)
		int startRow = (currentPage-1)*limit +1;	
		// ex) 2page면 시작 번호가 11번일 것이다.
		int endRow = startRow + limit -1;
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			pstmt.setInt(3, 1); 	// 1은 게시판 타입을 의미함 -> 1=일반게시판, 2=사진게시판
			
			rs=pstmt.executeQuery();
			
			list = new ArrayList<Bbs>();	// 컬렉션(ArrayList)는 반드시 기본생성자로 초기화 해놓고 활용하자!!
			
			while(rs.next()) {
				Bbs b = new Bbs(rs.getInt("bid"),
									rs.getString("type"),
									rs.getString("title"),
									rs.getString("content"),
									rs.getString("body_path"),
									rs.getString("writer"),
									rs.getString("poster_name"),
									rs.getDate("poster_date"),
									rs.getDate("end_date"),
									rs.getDate("modify_date"),
									rs.getInt("bConut"),
									rs.getInt("attach_f"),
									rs.getInt("attach_cnt"),
									rs.getInt("delete_flag"),
									rs.getDate("delete_date"),
									rs.getString("memo"));

				
				
				list.add(b);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		return list;
	}

	public int insertBbs(Connection conn, Bbs b) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertBbs");
		
		try {
			pstmt= conn.prepareStatement(query);
			pstmt.setInt(1, Integer.valueOf(b.getType()));
			pstmt.setString(2,  b.getTitle());
			pstmt.setString(3, b.getContent());
			pstmt.setString(4, b.getWriter());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public Bbs selectBbs(Connection conn, int bid) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		Bbs b = null;
		
		String query = prop.getProperty("selectBbs");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, bid);
			
		
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				b = new Bbs(rs.getInt("bid"),
						rs.getString("type"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getString("body_path"),
						rs.getString("writer"),
						rs.getString("poster_name"),
						rs.getDate("poster_date"),
						rs.getDate("end_date"),
						rs.getDate("modify_date"),
						rs.getInt("bConut"),
						rs.getInt("attach_f"),
						rs.getInt("attach_cnt"),
						rs.getInt("delete_flag"),
						rs.getDate("delete_date"),
						rs.getString("memo"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return b;
	}

	public int updateCount(Connection conn, int bid) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateCount");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, bid);
			
			result = pstmt.executeUpdate();
 
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}

		return result;
	}

	public ArrayList selectBList(Connection conn) {
		Statement stmt = null;
		ResultSet rs = null;
		
		ArrayList list = null;
		String query = prop.getProperty("selectBList");
		
		try {
			stmt = conn.createStatement();
			rs=stmt.executeQuery(query);
			list = new ArrayList();
			
			while(rs.next()) {
				list.add(new Bbs(rs.getInt("bid"),
						rs.getString("type"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getString("body_path"),
						rs.getString("writer"),
						rs.getString("poster_name"),
						rs.getDate("poster_date"),
						rs.getDate("end_date"),
						rs.getDate("modify_date"),
						rs.getInt("bConut"),
						rs.getInt("attach_f"),
						rs.getInt("attach_cnt"),
						rs.getInt("delete_flag"),
						rs.getDate("delete_date"),
						rs.getString("memo")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(stmt);
			close(rs);
		}

		return list;
	}


	
}
