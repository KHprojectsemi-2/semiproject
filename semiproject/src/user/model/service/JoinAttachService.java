package user.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import user.model.dao.JoinAttachDao;
import user.model.dao.UserDao;
import user.model.vo.JoinAttach;

public class JoinAttachService {

	public JoinAttachService() {
		
	}

	public int insertImg(ArrayList<JoinAttach> fileList) {

		Connection conn = getConnection();
		System.out.println("서비스 접속");
		
		int result = new JoinAttachDao().insertImg(conn,fileList);
		
		if(result>0) 
			commit(conn);
		else
			rollback(conn);
		
		close(conn);
		
		return result;

	}

	public int selectImgNo(String changeName) {
		
		Connection conn = getConnection();
		int fileNo = new JoinAttachDao().selectImgNo(conn,changeName);
		
		close(conn);
		
		return fileNo;
	}
	
	
}
