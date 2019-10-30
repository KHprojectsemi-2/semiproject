package petSitter.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import matching.model.vo.Matching;
import matching.model.vo.PetSitterMatchingJoin;

import java.sql.Statement;
import static common.JDBCTemplate.*;

import petSitter.model.vo.PetSitter;

public class PetSitterDao {

	 Properties prop = new Properties();
	   
	   public PetSitterDao() {
	      String fileName = PetSitterDao.class.getResource("/sql/petSitter/petSitter-query.properties").getPath();
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
//	      String query = prop.getProperty("applyPetSitter");
	      String query = "INSERT INTO PETSITTER VALUES(?, SEQ_PETSITTERNO.NEXTVAL, DEFAULT, ?, ?, ?, ?, ?, ?, ?, ?, ?, DEFAULT, DEFAULT)";
	      
	      System.out.println("다오다오다오 id : " + p.getUserId());
	      System.out.println("다오다오다오 resume : " + p.getChkResume());
	      
	      System.out.println("다오 : " + p);
	      
	      try {
	         pstmt = conn.prepareStatement(query);
	         pstmt.setString(1, p.getUserId());
	         pstmt.setString(2, p.getResidence());
	         pstmt.setString(3, p.getJob());
	         pstmt.setString(4, p.getWithFam());
	         pstmt.setString(5, p.getWithPet());
	         pstmt.setString(6, p.getCanLarge());
	         pstmt.setString(7, p.getCanMedic());
	         pstmt.setString(8, p.getCanOld());
	         pstmt.setString(9, p.getCanSick());
	         pstmt.setString(10, p.getIsLicense());
	         
	         System.out.println("다오다오 안나와?????? 나오렴");
	         
	         result = pstmt.executeUpdate();
	         System.out.println("dao" +p);
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally {
	         close(pstmt);
	      }
	      
	      return result;
	   }

	   public ArrayList<PetSitter> selectList(Connection conn) {
	      System.out.println("펫시터 리스트 다오");
	      // Statement로 한 번 해보기!
	      Statement stmt = null;
	      ResultSet rs = null;
	      
	      ArrayList<PetSitter> arr = null;
	      
	      String query = prop.getProperty("selectList");
	      
	      try {
	         stmt = conn.createStatement();
	         rs = stmt.executeQuery(query);
	         arr = new ArrayList<PetSitter>();   // ArrayList는 기본 생성자로 항상 객체 만들어서 초기화하자
	         
	         while(rs.next()) {
	            PetSitter p = new PetSitter(rs.getString("USERID"),
	                                 rs.getInt("PETSITTERNO"),
	                                 rs.getInt("GRADE"),
	                                 rs.getString("RESIDENCE"),
	                                 rs.getString("JOB"),
	                                 rs.getString("WITHFAM"),
	                                 rs.getString("WITHPET"),
	                                 rs.getString("CANLARGE"),
	                                 rs.getString("CANMEDIC"),
	                                 rs.getString("CANOLD"),
	                                 rs.getString("CANSICK"),
	                                 rs.getString("ISLICENSE"),
	                                 rs.getDate("APPLYDATE"),
	                                 rs.getString("CHKRESUME")
	                                 
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

	   // 펫시터 지원서 클릭해서 조회
	   public PetSitter selectPetSitter(Connection conn, int pNo) {
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      
	      PetSitter petSitter = null;
	      
	      System.out.println("지원서 확인 다오");
	      String query = prop.getProperty("selectPetSitter");
	      
	      try {
	         pstmt = conn.prepareStatement(query);
	         pstmt.setInt(1, pNo);
	         
	         rs = pstmt.executeQuery();
	         
	         if(rs.next()) {
	            petSitter = new PetSitter(rs.getString("USERID"),
	                           rs.getInt("PETSITTERNO"),
	                           rs.getInt("GRADE"),
	                           rs.getString("RESIDENCE"),
	                           rs.getString("JOB"),
	                           rs.getString("WITHFAM"),
	                           rs.getString("WITHPET"),
	                           rs.getString("CANLARGE"),
	                           rs.getString("CANMEDIC"),
	                           rs.getString("CANOLD"),
	                           rs.getString("CANSICK"),
	                           rs.getString("ISLICENSE"),
	                           rs.getDate("APPLYDATE"),
	                           rs.getString("CHKRESUME")
	                  );
	         }
	         
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally {
	         close(pstmt);
	         close(rs);
	      }
	      
	      
	      return petSitter;
	   }

	   /**
	    * 지원서 승인 dao
	    * @param conn
	    * @param p
	    * @return
	    */
	   public int approvePetSitter(Connection conn, String userId) {
	      PreparedStatement pstmt = null;
	      System.out.println("지원서 승인 다오");
	      int result = 0;
	      
	      String query = prop.getProperty("applyPetSitter");
	      
	      try {
	         pstmt = conn.prepareStatement(query);
	         pstmt.setString(1, userId);
	         result = pstmt.executeUpdate();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally {
	         close(pstmt);
	      }
	      
	      return result;
	   }









}












