package bbs.model.service;

//Service클래스 처음 만들면 이거 먼저!!
import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;


import bbs.model.dao.BoardDao;
import bbs.model.vo.Attachment;
import bbs.model.vo.Board;
import bbs.model.vo.Reply;

public class BoardService {

	/*
	 * 게시판 리스트 갯수 조회용
	 */
	public int getListCount() {
		Connection conn = getConnection();
		
		int listCount = new BoardDao().getListCount(conn);
		
		close(conn);
		
		return listCount;
	}

	/*
	 * 게시판 리스트 조회용
	 */
	public ArrayList<Board> selectList(int currentPage, int limit) {
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDao().selectList(conn, currentPage, limit);
		
		close(conn);
		
		return list;
	}

	public int insertBoard(Board b) {
		Connection conn = getConnection();
		
		int result = new BoardDao().insertBoard(conn, b);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	public Board selectBoard(int bid) {
		Connection conn = getConnection();
		
//		Board board = new BoardDao().selectBoard(conn, bid);
		//BoardDao 메소드 두개를 호출해서 하나는 조회하고 하나는 조회수 늘리는 작업을 해보자
		//게시판을 클릭하면 조회수가 증가해야하므로
		
		Board b = new Board();
		BoardDao bDao = new BoardDao();
		int result = bDao.updateCount(conn,bid);
		
		if(result>0) {
			commit(conn);
			b=bDao.selectBoard(conn,bid);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return b;
	}

	public ArrayList selectList(int flag) {
		Connection conn = getConnection();
		ArrayList list = null;
		
		
		// BoardDao 메소드 두개를 호출할꺼라 참조변수로 선언하자.
		BoardDao bDao = new BoardDao();
		
		if(flag ==1) {
			list = bDao.selectBList(conn);
		}else {
			list = bDao.selectFList(conn);
		}
		
		close(conn);
		
		return list;
	}

	public int insertThumbnail(Board b, ArrayList<Attachment> fileList) {
		Connection conn = getConnection();
		
		// BoardDao 메소드 두개를 호출하자
		BoardDao bDao = new BoardDao();
		
		int result1 = bDao.insertThBoard(conn,b);
		int result2 = bDao.insertAttachment(conn,fileList);
		
		int result = 0;
		
		if(result1>0 && result2>0) {
			commit(conn);
			result =1;
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public ArrayList<Attachment> selectThumbnail(int bid) {
		Connection conn = getConnection();
		
		ArrayList<Attachment> list = new BoardDao().selectThumbnail(conn,bid);
		
		close(conn);
		
		return list;
	}

	public Attachment selectAttachment(int fid) {
		Connection conn = getConnection();
		
//		Attachment at = new BoardDao().selectAttachment(conn,fid);
		
		// 파일 다운로드시 다운로드 횟수도 증가시켜보자(메소드 두개(하나는 다운할 파일 select, 하나는 해당 파일 다운로드 횟수 증가))
		BoardDao bDao = new BoardDao();
		Attachment at = new Attachment();
		
		// 다운로드 횟수 증가
		int result = bDao.updateDownloadCount(conn,fid);
		
		if(result>0) {
			commit(conn);
			// 다운로드할 파일 객체
			at = new BoardDao().selectAttachment(conn,fid);
		}else {
			rollback(conn);
		}
		
		close(conn);

		return at;
	}

	public ArrayList<Reply> selectReplyList(int bid) {
		Connection conn = getConnection();
		
		ArrayList<Reply> rlist = new BoardDao().selectReplyList(conn, bid);
		
		close(conn);
		
		
		return rlist;
	}

	public ArrayList<Reply> insertReply(Reply r) {
		
		Connection conn = getConnection();
		
		// 우리가 insert 작업을 하면 exceuteUpdate를 해야 하므로 무조건 int형이 넘어온다
		// 그래서 성공하고 나서 다시 하면에 뿌려줄 해당 게시글 댓글 리스트를 한번 더 db를 가서 가져오자
		
		BoardDao bDao = new BoardDao();
		
		int result = bDao.insertReply(conn, r);
		
		ArrayList<Reply> rlist = null;
		
		if (result > 0) {
			commit(conn);
			rlist = bDao.selectReplyList(conn,r.getRefBid());
		}else {
			rollback(conn);
		}
		
		

		return null;
	}



}
