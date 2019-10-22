package user.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import user.model.vo.Pet;
import user.model.vo.User;

public class PetDao {

	private Properties prop = new Properties();
	
	public PetDao() {

		String fileName = PetDao.class.getResource("/sql/user/pet-query.properties").getPath();
		System.out.println(PetDao.class.getResource("/sql/user/pet-query.properties").getPath());
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public int insertPet(Connection conn, Pet pet) {
	
		PreparedStatement pstmt = null;
		
		int result = 0;	

		String query = prop.getProperty("insertPet");

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,pet.getUserId());
			pstmt.setString(2, pet.getPetName());
			pstmt.setString(3, pet.getPetWeight());
			pstmt.setString(4, pet.getPetKind());
			pstmt.setString(5, pet.getPetGender());
			pstmt.setString(6, pet.getIsNeutral());
			pstmt.setInt(7, pet.getPetAge());

			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			close(pstmt);
		}

		return result;

	}

}
