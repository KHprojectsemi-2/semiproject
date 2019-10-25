package user.model.dao;

import static common.JDBCTemplate.*;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import user.model.vo.User;

public class UserDao {

	// 메소드에서 활용된 query문을 properties 파일로 만들어 가져온다.
	// member(회원)과 관련된 쿼리를 담을 member-query.properties 파일을 불러오자
	
	private Properties prop = new Properties();
	
	public UserDao() {
		// 항상 member-query.properties 값을 불러 올 수 있도록
		// 기본 생성자 안에서 properties 파일을 불러오는 작업을 하자
		String fileName = UserDao.class.getResource("/sql/user/user-query.properties").getPath();
		//System.out.println(UserDao.class.getResource("/sql/user/user-query.properties").getPath());
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
									rs.getString("USERADDRESS"),
									rs.getString("USERIMAGE"),
									rs.getInt("REPORTED"),
									rs.getDate("JOINDATE"),
									rs.getDate("LATESTDATE"),
									rs.getString("USERSTATUS")
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
			pstmt.setString(8, user.getUserAddress());
			
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

}
