package user.model.service;
import static common.JDBCTemplate.*;

import java.sql.Connection;

import user.model.dao.MyMatchingDao;

public class MyMatchingService {

	// 매칭현황 리스트 갯수 조회용
	public int getListCount() {
		Connection conn = getConnection();
		
		int listCount = new MyMatchingDao().getListCount(conn);
		
		close(conn);
		
		return listCount;
	}

}
