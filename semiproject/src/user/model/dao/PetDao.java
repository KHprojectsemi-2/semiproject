package user.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import user.model.vo.Pet;

import static common.JDBCTemplate.*;

public class PetDao {
	Properties prop = new Properties();
	public PetDao() {
		String fileName = PetDao.class.getResource("/sql/pet/Pet-query.properties").getPath();
			try {
				prop.load(new FileReader(fileName));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

	}
	public ArrayList<Pet> selectPet(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<Pet> pList = null;
		
		String query = prop.getProperty("selectPet");

		try{
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			
			rs = pstmt.executeQuery();
			
			pList = new ArrayList<Pet>();
			
			while(rs.next()){
				Pet p = new Pet(rs.getInt(1),
							rs.getString(2),
							rs.getString(3),
							rs.getString(4),
							rs.getString(5),
							rs.getString(6),
							rs.getString(7),
							rs.getString(8),
							rs.getInt(9),
							rs.getString(10));
				System.out.println("DAO :"+p);
				pList.add(p);
			}
		} catch(SQLException e){
			e.printStackTrace();
		} finally{
			close(rs);
			close(pstmt);
		}
		System.out.println("DAO :"+ pList);
		return pList;
	}
	public int updatePet(Connection conn, int petno1) {
		PreparedStatement pstmt = null;
		int result=0;
		
		String query = prop.getProperty("updatePet");
		
		try{
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, petno1);
			
			result = pstmt.executeUpdate();
		} catch(SQLException e){
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		
		return result;
	}
	public ArrayList<Pet> selectcarePet(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<Pet> pList = null;
		
		String query = prop.getProperty("selectMatchingPet");
		System.out.println("query: "+query);
		System.out.println("userId :" + userId);
		try{
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			
			rs = pstmt.executeQuery();
			
			pList = new ArrayList<Pet>();
			
			while(rs.next()){
				Pet p = new Pet(rs.getInt(1),
							rs.getString(2),
							rs.getString(3),
							rs.getString(4),
							rs.getString(5),
							rs.getString(6),
							rs.getString(7),
							rs.getString(8),
							rs.getInt(9),
							rs.getString(10));
				System.out.println("DAO :"+p);
				pList.add(p);
			}
		} catch(SQLException e){
			e.printStackTrace();
		} finally{
			close(rs);
			close(pstmt);
		}
		System.out.println("DAO :"+ pList);
		return pList;
	}
	public ArrayList<Pet> selectNotMatchingPet(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<Pet> pList = null;
		
		String query = prop.getProperty("selectNotMatchingPet");
		
		try{
			pstmt= conn.prepareStatement(query);
			pstmt.setString(1, userId);
			
			rs = pstmt.executeQuery();
			pList = new ArrayList<Pet>();
			
			while(rs.next()){
				Pet p = new Pet(rs.getInt(1),
							rs.getString(2),
							rs.getString(3),
							rs.getString(4),
							rs.getString(5),
							rs.getString(6),
							rs.getString(7),
							rs.getString(8),
							rs.getInt(9),
							rs.getString(10));
				System.out.println("DAO :"+p);
				pList.add(p);
			}
		} catch(SQLException e){
			e.printStackTrace();
		} finally{
			close(rs);
			close(pstmt);
		}
		System.out.println("DAO :"+ pList);
		return pList;
	}

	
	
}
