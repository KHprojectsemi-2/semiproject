package user.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;

import user.model.dao.PetDao;
import user.model.vo.Pet;

public class PetService {

	
	//기본생성자
	public PetService() {
		
	}
	
	public int insertPet(Pet pet) {

		Connection conn = getConnection();
		int result = new PetDao().insertPet(conn,pet);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;

	}

}
