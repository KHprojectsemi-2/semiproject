package petSitter.model.service;

import java.sql.Connection;
import java.util.ArrayList;

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
		
		int result = new PetSitterDao().applyPetSitter(conn, p);
		
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
		Connection conn = getConnection();
		
		ArrayList<PetSitter> pArr = new PetSitterDao().selectList(conn);
		
		close(conn);
		
		return pArr;
	}

}





