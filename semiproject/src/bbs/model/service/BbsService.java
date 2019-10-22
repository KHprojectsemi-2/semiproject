package bbs.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import bbs.model.dao.BbsDao;
import bbs.model.vo.Bbs;

public class BbsService {
	
	public int getListCnt() {
		
		/*
		 * 게시판 리스트 개수 조회
		 */
		
		Connection conn = getConnection();
		
		int listCnt = new BbsDao().getListCnt(conn);	
		
		close(conn);
		
		return getListCnt();
		
	}


	
		public ArrayList<Bbs> selectList(int currentPage, int limit) {
			Connection conn = getConnection();
			
			ArrayList<Bbs> list = new BbsDao().selectList(conn, currentPage, limit);
			
			close(conn);
			
			return list;
		}



		public int insertBbs(Bbs b) {

			Connection conn = getConnection();
			
			int result = new BbsDao().insertBbs(conn, b);
			
			if(result>0) {
				commit(conn);
			}else {
				rollback(conn);
			}
			close(conn);
			
			return result;
		}



			public Bbs selectbbs(int bid) {
				Connection conn = getConnection();
				
//				Board board = new BoardDao().selectBoard(conn, bid);
				//BoardDao 메소드 두개를 호출해서 하나는 조회하고 하나는 조회수 늘리는 작업을 해보자
				//게시판을 클릭하면 조회수가 증가해야하므로
				
				Bbs b = new Bbs();
				BbsDao bDao = new BbsDao();
				int result = bDao.updateCount(conn,bid);
				
				if(result>0) {
					commit(conn);
					b=bDao.selectBbs(conn,bid);
				}else {
					rollback(conn);
				}
				
				close(conn);
				
				return b;
			}
		
	
}
