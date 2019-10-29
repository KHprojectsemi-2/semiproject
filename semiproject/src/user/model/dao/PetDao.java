package user.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
			pstmt.setString(1, pet.getUserId());
			pstmt.setString(2, pet.getPetName());
			pstmt.setString(3, pet.getPetWeight());
			pstmt.setString(4, pet.getPetImage());
			pstmt.setString(5, pet.getPetKind());
			pstmt.setString(6, pet.getPetGender());
			pstmt.setString(7, pet.getIsNeutral());
			pstmt.setInt(8, pet.getPetAge());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			close(pstmt);
		}

		return result;

	}

	// pet정보 불러오기
	public ArrayList<Pet> selectPet(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Pet> pal = null;

		String query = prop.getProperty("selectPet");

		try {
			pstmt = conn.prepareStatement(query);

			pstmt.setString(1, userId);

			rs = pstmt.executeQuery();

			pal = new ArrayList<Pet>();

			while (rs.next()) {
				Pet p = new Pet(rs.getInt("petNo"), rs.getString("userId"), rs.getString("petName"),
						rs.getString("petWeight"), rs.getString("petImage"), rs.getString("petKind"),
						rs.getString("petGender"), rs.getString("isNeutral"), rs.getInt("petAge"),
						rs.getString("petMatch"));
				pal.add(p);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		return pal;

	}

}
