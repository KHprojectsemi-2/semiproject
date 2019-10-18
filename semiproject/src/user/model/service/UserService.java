package user.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;

import user.model.dao.UserDao;
import user.model.vo.User;

public class UserService {
	
	//로그인 처리를 위한 상수 선언
	public static int LOGIN_OK = 1;
	public static int WRONG_PASSWORD = 0;
	public static int ID_NOT_EXIST = -1;

	//기본생성자
	public UserService() {
		
		
	}
	
	/*
	 * 1. 로그인용 서비스 메소드
	 */
	public User loginUser(User user) {
		Connection conn = getConnection();
		User loginUser = new UserDao().loginUser(conn,user);
		System.out.println("서비스 거쳐감");	
		
		close(conn);
		
		return loginUser;
		
		// 다시 Servlet으로 가자!
	}
	
	
	  //회원 정보수정 메소드
		
	public int updateUser(User user) {
		Connection conn = getConnection();
		int result = new UserDao().updateUser(conn, user);
		
		if (result>0)
			commit(conn);
		else
			rollback(conn);
		
		close(conn);
		
		return result;
	}
	//회원 탈퇴
	public int deleteUser(String userId) {
		Connection conn = getConnection();
		
		int result = new UserDao().deleteUser(conn,userId);
		
		if(result>0) 
			commit(conn);
		else
			rollback(conn);
		
		close(conn);
		
		return result;
	}
	
}
