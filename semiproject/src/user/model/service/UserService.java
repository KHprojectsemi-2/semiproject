package user.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

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
		UserDao dao = new UserDao();
		Connection conn = getConnection();
		User loginUser = dao.loginUser(conn,user);
		int result = dao.updateLoginDate(conn,user);
		if(result>0)
		{
			System.out.println("로그인 확인, 최근 접속 날짜 업데이트");	
			commit(conn);
		}
		else {
			rollback(conn);
		}
		close(conn);
		return loginUser;

	}

	public int insertUser(User user) {

		Connection conn = getConnection();
		int result = new UserDao().insertMember(conn,user);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;

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

	public ArrayList<User> selectAllUser() {

		Connection conn = getConnection();
		
		ArrayList<User> userList = new UserDao().selectAllUser(conn);
		
		close(conn);
		
		return userList;	
		
	}

	public int idCheck(String userId) {

		Connection conn = getConnection();
		int result = new UserDao().idCheck(conn,userId);
		
		close(conn);
		
		return result;
	}
	
}
