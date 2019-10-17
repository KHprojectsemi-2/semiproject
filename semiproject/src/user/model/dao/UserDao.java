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
		System.out.println(UserDao.class.getResource("/sql/user/user-query.properties").getPath());
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
									rs.getString("USERNAME"),
									rs.getString("USERPWD"),
									rs.getDate("USERBIRTH"),
									rs.getString("USEREMAIL"),
									rs.getString("USERPHONE"),
									rs.getString("USERADDRESS"),
									rs.getString("USERIMAGE"),
									rs.getInt("REPORTED"),
									rs.getDate("JOINDATE"),
									rs.getDate("LATESTDATE"),
									rs.getString("USERSTATUS")
						);	
			System.out.println("dao에서의 유저 : "+loginUser);
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

}