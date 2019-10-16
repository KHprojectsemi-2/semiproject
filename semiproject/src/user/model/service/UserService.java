package user.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;

public class UserService {
	
	//로그인 처리를 위한 상수 선언
	public static int LOGIN_OK = 1;
	public static int WRONG_PASSWORD = 0;
	public static int ID_NOT_EXIST = -1;

	//기본생성자
	public UserService() {}
	
	/*
	 * 1. 로그인용 서비스 메소드
	 */
	public User loginMember(User user) {
		Connection conn = getConnection();
		User loginUser = new UserDao().loginUser(conn,user);
			
		close(conn);
		
		return loginUser;
		
		// 다시 Servlet으로 가자!
	}
}
