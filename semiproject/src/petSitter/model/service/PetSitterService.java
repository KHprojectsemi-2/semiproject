package petSitter.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import matching.model.vo.Matching;
import matching.model.vo.PetSitterMatchingJoin;
import petSitter.model.dao.PetSitterDao;
import petSitter.model.vo.PetSitter;

import static common.JDBCTemplate.*;

public class PetSitterService {
	
	// 기본 생성자
	public PetSitterService() {

			
	}
	
	/**
	 * 펫시터 지원서 작성
	 * @param p
	 * @return
	 */
	public int applyPetSitter(PetSitter p) {
		Connection conn = getConnection();
		System.out.println("sevice 받음");
		System.out.println(p);
		PetSitterDao dao = new PetSitterDao();
		int result = dao.applyPetSitter(conn, p);
		System.out.println("petSitter service()");
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	// 펫시터 지원 목록 조회용 리스트
	public ArrayList<PetSitter> selectList() {
		System.out.println("펫시터 리스트 서비스");
		Connection conn = getConnection();
		
		ArrayList<PetSitter> pArr = new PetSitterDao().selectList(conn);
		
		close(conn);
		
		return pArr;
	}

	// 지원서 확인
	public PetSitter selectPetSitter(int pNo) {
		Connection conn = getConnection();
		System.out.println("지원서 확인 서비스");
		
		PetSitter petSitter = new PetSitterDao().selectPetSitter(conn, pNo);
		
		close(conn);
		
		return petSitter;
	}

	// 지원서 승인
	public int approvePetSitter(String userId) {
		Connection conn = getConnection();
		
		System.out.println("지원서 승인 서비스");
		int result = new PetSitterDao().approvePetSitter(conn, userId);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
		
	}

}





