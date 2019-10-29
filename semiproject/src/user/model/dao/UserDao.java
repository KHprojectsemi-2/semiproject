package user.model.dao;

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

import user.model.vo.JoinAttach;
import user.model.vo.Report;
import user.model.vo.User;

public class UserDao {

	// 메소드에서 활용된 query문을 properties 파일로 만들어 가져온다.
	// member(회원)과 관련된 쿼리를 담을 member-query.properties 파일을 불러오자
	
	private Properties prop = new Properties();
	
	public UserDao() {

		String fileName = UserDao.class.getResource("/sql/user/user-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	
	public User loginUser(Connection conn, User user) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		User loginUser = null;
		
		String query = prop.getProperty("loginUser");

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, user.getUserId());
			pstmt.setString(2, user.getUserPwd());

			rs = pstmt.executeQuery();
			while(rs.next()) {
			loginUser = new User(rs.getString("USERID"),
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
									rs.getString("USERSTATUS"),
									rs.getDate("STOPDATE")
						);	
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		return loginUser;
		
		// 다시 Service로 가자!!
	}

	/*
	 * 정보수정
	 */
	public int updateUser(Connection conn, User user) {
		PreparedStatement pstmt=null;
		int result=0;
		
		String query = prop.getProperty("updateUser");
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, user.getUserName());
			pstmt.setString(2, user.getUserPhone());
			pstmt.setString(3, user.getUserEmail());
			pstmt.setString(4, user.getUserPostcode());
			pstmt.setString(4, user.getUserAddress());
			pstmt.setString(5, user.getUserImage());
			pstmt.setString(6, user.getUserId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		
		
		return result;
		
	}

	//회원 탈퇴
	public int deleteUser(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("deleteUser");
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, userId);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int insertMember(Connection conn, User user) {

		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertUser");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, user.getUserId());
			pstmt.setString(2, user.getUserPwd());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			pstmt.setDate(6, user.getUserBirth());
			pstmt.setString(7, user.getUserPhone());
			pstmt.setString(8, user.getUserPostcode());
			pstmt.setString(9, user.getUserAddress());
			pstmt.setString(10, user.getUserImage());
			
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}

		return result;
	}


	public int updateLoginDate(Connection conn, User user) {

		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateLoginDate");
		
		try {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, user.getUserId());
				
				result = pstmt.executeUpdate();
				
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}


	public ArrayList<User> selectAllUser(Connection conn) {

		Statement stmt = null;
		ResultSet rs = null;
		
		ArrayList<User> list = new ArrayList<User>();
		String query = prop.getProperty("selectAllUser");
		
		try {
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				list.add(new User(rs.getString("userId"),
						rs.getInt("userNo"),
						rs.getString("userPwd"),
						rs.getString("userName"),
						rs.getString("userGender"),
						rs.getString("userEmail"),
						rs.getDate("userBirth"),
						rs.getString("userPhone"),
						rs.getString("userPostcode"),
						rs.getString("userAddress"),
						rs.getString("userImage"),
						rs.getInt("reported"),
						rs.getDate("joinDate"),
						rs.getDate("latestDate"),
						rs.getString("userStatus"),
						rs.getDate("stopDate")
						));	
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}finally {
			close(stmt);
			close(rs);
		}
		
		return list;
	}


	public int idCheck(Connection conn, String userId) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("selectUser");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}

		return result;
		
	}


	public User selectUser(Connection conn, int userNo) {

		PreparedStatement pstmt=null;
		ResultSet rs = null;
		User user = null;
		
		String query = prop.getProperty("selectUserNo");
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, userNo);	
			rs = pstmt.executeQuery();
			
			if(rs.next()) {	
				user = new User(rs.getString("userId"),
						rs.getInt("userNo"),
						rs.getString("userPwd"),
						rs.getString("userName"),
						rs.getString("userGender"),
						rs.getString("userEmail"),
						rs.getDate("userBirth"),
						rs.getString("userPhone"),
						rs.getString("userPostcode"),
						rs.getString("userAddress"),
						rs.getString("userImage"),
						rs.getInt("reported"),
						rs.getDate("joinDate"),
						rs.getDate("latestDate"),
						rs.getString("userStatus"),
						rs.getDate("stopDate"));
				
				System.out.println("DAO에서 생성된 유저 :" +user);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return user;
	
	}

	public String findUserId(Connection conn, User user) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = prop.getProperty("findUserId");
		String userId = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, user.getUserName());
			pstmt.setString(2, user.getUserEmail());
			pstmt.setDate(3, user.getUserBirth());

			rs = pstmt.executeQuery();
			if(rs.next()) {
				userId = rs.getString("userId");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return userId;
	}

	public int findPassword(Connection conn, String password,User user) {

		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("findPassword");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, password);
			pstmt.setString(2, user.getUserId());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserEmail());
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}

		return result;
	}


	public int insertReport(Connection conn, Report report) {

		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("insertReport");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, report.getUserId());
			pstmt.setString(2, report.getReportMsg());
			
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}

		return result;
	}
	
	public int updateStop(Connection conn, Report report,Date limitDate) {

		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("updateStop");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setDate(1, limitDate);
			pstmt.setString(2, report.getUserId());
			
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}

		return result;
	}


	public Report selectReport(Connection conn, User user) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = prop.getProperty("selectReport");
		Report userReport = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, user.getUserId());


			rs = pstmt.executeQuery();
			if(rs.next()) {
				userReport = new Report(rs.getInt("reportNo"),
										rs.getString("userId"),
										rs.getString("reportMsg"),
										rs.getString("status"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return userReport;
	}


	public int updateReport(Connection conn, int reportNo) {

		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("updateReport");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, reportNo);
			
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}

		return result;
	}


	public int finishStop(Connection conn, String userId) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("finishStop");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}

		return result;
	}


	public int getUserCount(Connection conn) {
		Statement stmt = null;
		ResultSet rs  = null;
		int listCount = 0;
		
		String query = prop.getProperty("getUserCount");

		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			
			if(rs.next()) {
				listCount=rs.getInt(1); // 쿼리에서의 count(*) resultSet 컬럼 값을 listCount에 담는다
			}
			
		} catch (SQLException e) {

			e.printStackTrace();
		}finally {
			close(stmt);
			close(rs);
		}
		
		return listCount;
	}


	public ArrayList<User> selectUserList(Connection conn, int currentPage, int limit) {

		PreparedStatement pstmt = null;
		ArrayList<User> list = new ArrayList<User>();
		ResultSet rs = null;
		
		String query = prop.getProperty("selectUserList");
		
		// 쿼리문 실행시 조건절에 넣을 변수들(rownum에 대한 조건 시 필요)
		int startRow = (currentPage-1)*limit +1; // ex) 2페이지면, 시작번호가 11번
		int endRow = startRow + limit - 1;		// 11~20
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				User user = new User(rs.getString("userId"),
						rs.getInt("userNo"),
						rs.getString("userPwd"),
						rs.getString("userName"),
						rs.getString("userGender"),
						rs.getString("userEmail"),
						rs.getDate("userBirth"),
						rs.getString("userPhone"),
						rs.getString("userPostcode"),
						rs.getString("userAddress"),
						rs.getString("userImage"),
						rs.getInt("reported"),
						rs.getDate("joinDate"),
						rs.getDate("latestDate"),
						rs.getString("userStatus"),
						rs.getDate("stopDate"));
				list.add(user);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return list;
	}



}
