package petSitter.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
import static common.JDBCTemplate.*;
import petSitter.model.vo.PetSitter;

public class PetSitterDao {
	Properties prop = new Properties();
	
	public PetSitterDao() {
		String fileName = PetSitterDao.class.getResource("sql/petSitter/petSitter-query.properties").getPath();
		System.out.println(fileName);
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/*
	 *  펫시터 지원서 작성 dao
	 */
	public int applyPetSitter(Connection conn, PetSitter p) {
		System.out.println("petSitter dao()1");

		PreparedStatement pstmt = null;
		int result = 0;
		System.out.println("petSitter dao()222");
		String query = prop.getProperty("applyPetSitter");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, p.getUserId());
			pstmt.setInt(2, p.getGrade());
			pstmt.setString(3, p.getResidence());
			pstmt.setString(4, p.getJob());
			pstmt.setString(5, p.getWithFam());
			pstmt.setString(6, p.getWithPet());
			pstmt.setString(7, p.getCanLarge());
			pstmt.setString(8, p.getCanMedic());
			pstmt.setString(9, p.getCanOld());
			pstmt.setString(10, p.getCanSick());
			pstmt.setString(11, p.getIsLicense());
			pstmt.setString(12, p.getChkResume());
			
//			pstmt.setString(1, p.getUserId());
//			pstmt.setString(2, p.getResidence());
//			pstmt.setString(3, p.getJob());
//			pstmt.setString(4, p.getWithFam());
//			pstmt.setString(5, p.getWithPet());
//			pstmt.setString(6, p.getCanLarge());
//			pstmt.setString(7, p.getCanMedic());
//			pstmt.setString(8, p.getCanOld());
//			pstmt.setString(9, p.getCanSick());
//			pstmt.setString(10, p.getIsLicense());
			
//			pstmt.setString(1, p.getResidence());
//			pstmt.setString(2, p.getJob());
//			pstmt.setString(3, p.getWithFam());
//			pstmt.setString(4, p.getWithPet());
//			pstmt.setString(5, p.getCanLarge());
//			pstmt.setString(6, p.getCanMedic());
//			pstmt.setString(7, p.getCanOld());
//			pstmt.setString(8, p.getCanSick());
//			pstmt.setString(9, p.getIsLicense());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public ArrayList<PetSitter> selectList(Connection conn) {
		// Statement로 한 번 해보기!
		Statement stmt = null;
		ResultSet rs = null;
		
		ArrayList<PetSitter> arr = null;
		
		String query = prop.getProperty("selectList");
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			
			arr = new ArrayList<PetSitter>();	// ArrayList는 기본 생성자로 항상 객체 만들어서 초기화하자
			
			while(rs.next()) {
				PetSitter p = new PetSitter(rs.getString("userId"),
											rs.getString("residence"),
											rs.getString("isLicense")
										
						);
				arr.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(stmt);
		}
		return arr;
	}

}
