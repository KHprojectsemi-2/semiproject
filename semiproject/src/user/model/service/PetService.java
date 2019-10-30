package user.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import user.model.dao.PetDao;
import user.model.vo.Pet;

public class PetService {

	public ArrayList<Pet> selectPet(String userId) {
		Connection conn = getConnection();
		
		ArrayList<Pet> pList = new PetDao().selectPet(conn,userId);
		
		close(conn);
		return pList;
	}

	public int updatePet(int petno1) {
		Connection conn = getConnection();
		
		int result = new PetDao().updatePet(conn,petno1);
		
		if(result>0){
			commit(conn);
		}else{
			rollback(conn);
		}
		return result;
	}

	public ArrayList<Pet> selectcarePet(String userId) {
		Connection conn = getConnection();
		
		ArrayList<Pet> pList = new PetDao().selectcarePet(conn,userId);
		
		return pList;
	}

	public ArrayList<Pet> selectNotMatchingPet(String userId) {
		Connection conn = getConnection();
		
		ArrayList<Pet> pList = new PetDao().selectNotMatchingPet(conn,userId);
		
		return pList;
	}

}
