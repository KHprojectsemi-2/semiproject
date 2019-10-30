package user.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.sql.Date;
import java.util.ArrayList;

import user.model.dao.UserDao;
import user.model.vo.JoinAttach;
import user.model.vo.Report;
import user.model.vo.User;

public class UserService {
	
	//기본생성자
	public UserService() {
		
		
	}

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

	public ArrayList<User> selectUserList(int currentPage, int limit) {

		Connection conn = getConnection();
		
		ArrayList<User> userList = new UserDao().selectUserList(conn, currentPage, limit);
		
		close(conn);
		
		return userList;	
		
	}
	
	public int idCheck(String userId) {

		Connection conn = getConnection();
		int result = new UserDao().idCheck(conn,userId);
		
		close(conn);
		
		return result;
	}

	public User selectUser(int userNo) {

		Connection conn = getConnection();
		
		User user = new UserDao().selectUser(conn,userNo);
		
		close(conn);
		
		return user;
	}

	public String findUserId(User user) {

		Connection conn = getConnection();
		String userId = new UserDao().findUserId(conn,user);
		
		close(conn);
		
		return userId;
	}

	public int findPassword(String password,User user) {
		
		Connection conn = getConnection();
		System.out.println("서비스 접속");
		
		int result = new UserDao().findPassword(conn,password,user);
		
		if(result>0) 
			commit(conn);
		else
			rollback(conn);
		
		close(conn);
		
		return result;
	}

	public int insertReport(Report report,Date limitDate) {

		Connection conn = getConnection();
		
		int result = new UserDao().insertReport(conn,report);
		
		if(result>0) {
			commit(conn);
			int res2= new UserDao().updateStop(conn,report,limitDate);

			if(res2>0) {
				commit(conn);
			}else {
				rollback(conn);
			}
		}
		else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	public Report selectReport(User user) {
		Connection conn = getConnection();
		
		Report userReport = new UserDao().selectReport(conn,user);
		
		close(conn);
		
		return userReport;
	}

	public int updateReport(int reportNo, String userId) {

		Connection conn = getConnection();
		UserDao dao = new UserDao();
		int result = dao.updateReport(conn,reportNo);
		int res2=0;
		if(result>0) {
			commit(conn);
			res2 = dao.finishStop(conn,userId);
			if(res2>0) {
				commit(conn);
			}else {
				rollback(conn);
			}
		}else {
			rollback(conn);
		}
		close(conn);
		
		return res2;
	}

	// 회원 수 구하기
	public int getUserCount() {

		Connection conn = getConnection();
		
		int result = new UserDao().getUserCount(conn);
		
		close(conn);
		
		return result;
	}


}
