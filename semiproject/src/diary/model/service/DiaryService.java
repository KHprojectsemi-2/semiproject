package diary.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static common.JDBCTemplate.*;

import diary.model.dao.DiaryDao;
import diary.model.vo.Diary;
import diary.model.vo.JoinAttach;
import matching.model.vo.Matching;
import petSitter.model.dao.PetSitterDao;
import petSitter.model.vo.PetSitter;
import user.model.vo.User;

public class DiaryService {
	
	// 기본 생성자
	public DiaryService() {
		
	}
	
	
	/*
	 *  돌봄일지 등록
	 */
	public int insertDiary(Diary d, ArrayList<JoinAttach> fileList) {
		Connection conn = getConnection();
		
		int result1 = new DiaryDao().insertDiary(conn, d);
		int result2 = new DiaryDao().insertAttachment(conn, fileList);
		
		int result = 0;
		
		System.out.println("돌봄일지 등록 service");
		System.out.println(result);
		
		if(result1 > 0) {
			commit(conn);
			result = 1;
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	/*
	 *  돌봄일지 보기
	 */
	public Diary viewDiary(int dNo) {
		Connection conn = getConnection();
		System.out.println("돌봄일지 보기 서비스");
		
		Diary diary = new DiaryDao().viewDiary(conn, dNo);
		
		close(conn);
		
		return diary;
	}


	public PetSitter checkPetsitter(String userId) {
		Connection conn = getConnection();
		PetSitter ps = new DiaryDao().checkPetsitter(conn, userId);
		
		close(conn);
		return ps;
	}


	/*
	 * 돌봄일지 리스트
	 */
	public ArrayList<Diary> selectList(String userId) {
		System.out.println("돌봄일지 리스트 서비스");
		Connection conn = getConnection();
		
		ArrayList<Diary> dArr = new DiaryDao().selectList(conn);
		
		close(conn);
		
		return dArr;
	}


	// 펫시터 점수 주는 service
	public int insertGrade(Diary diary) {
		Connection conn= getConnection();
		
		int result = new DiaryDao().updateMember(conn, diary);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	// 돌봄일지 view service
	public Diary selectDiary(int dNo) {
		Connection conn = null;
		System.out.println("돌봄일지 뷰 서비스");
		
		Diary diary = new DiaryDao().selectDiary(conn, dNo);
		
		close(conn);
		
		return diary;
	}


	public Matching getMatchNo(String userId) {
		Connection conn= getConnection();
		
		Matching result = new DiaryDao().getMatchNo(conn, userId);
		
		close(conn);
		
		return result;
	}


	
	

}
