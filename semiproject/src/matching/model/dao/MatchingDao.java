package matching.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import matching.model.vo.Matching;
import matching.model.vo.MatchingUserJoin;
import matching.model.vo.PetSitterMatchingJoin;
import petSitter.model.dao.PetSitterDao;

public class MatchingDao {
   Properties prop = new Properties();
   

   public MatchingDao(){
      String fileName = PetSitterDao.class.getResource("/sql/matching/Matching-query.properties").getPath();
      
      try {
         prop.load(new FileReader(fileName));
      } catch (FileNotFoundException e) {
         e.printStackTrace();
      } catch (IOException e) {
         e.printStackTrace();
      }
   }
   
   public ArrayList<PetSitterMatchingJoin> selectPetSitter(Connection conn) {
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      
      ArrayList<PetSitterMatchingJoin> psmList = null;
      
      String query = prop.getProperty("selectPetsitter");

      try {
         pstmt = conn.prepareStatement(query);
         rs=pstmt.executeQuery();
         
         psmList = new ArrayList<PetSitterMatchingJoin>();
         
         while(rs.next()){
            psmList.add(new PetSitterMatchingJoin(rs.getInt(1),
                                       rs.getString(2),
                                       rs.getString(3),
                                       rs.getString(4),
                                       rs.getInt(5),
                                       rs.getInt(6),
                                       rs.getString(7),
                                       rs.getString(8),
                                       rs.getString(9),
                                       rs.getString(10),
                                       rs.getDouble(11),
                                       rs.getString(12),
                                       rs.getString(13),
                                       rs.getString(14),
                                       rs.getString(15),
                                       rs.getString(16),
                                       rs.getString(17),
                                       rs.getString(18),
                                       rs.getString(19),
                                       rs.getString(20),
                                       rs.getString(21),
                                       rs.getString(22),
                                       rs.getString(23),
                                       rs.getString(24),
                                       rs.getString(25),
                                       rs.getInt(26),
                                       rs.getString(27)));
         }
         
         
         
         
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      } finally{
         close(pstmt);
         close(rs);
      }
      
      
      return psmList;
      

   }

   public ArrayList<PetSitterMatchingJoin> searchPetSitter(Connection conn, int bigdog, int medic, int olddog, int patientdog, int resume) {
      
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      
      ArrayList<PetSitterMatchingJoin> psmList = null;
      
      String query = prop.getProperty("searchPetsitter");
      
      StringBuilder queryap = new StringBuilder();
      
      queryap.append(query);
      
      if(bigdog==1){
         queryap.append(" and canlarge='Y'");
      }
      if(medic==1){
         queryap.append(" and canmedic='Y'");
      }
      if(olddog==1){
         queryap.append(" and canold='Y'");
      }
      if(patientdog==1){
         queryap.append(" and cansick='Y'");
      }
      if(resume==1){
         queryap.append(" and islicense='Y'");
      }
      
      query = queryap.toString();
      
      System.out.println(query);
      
      try {
         pstmt = conn.prepareStatement(query);
         rs=pstmt.executeQuery();
         
         psmList = new ArrayList<PetSitterMatchingJoin>();
         
         while(rs.next()){
            psmList.add(new PetSitterMatchingJoin(rs.getInt(1),
                                       rs.getString(2),
                                       rs.getString(3),
                                       rs.getString(4),
                                       rs.getInt(5),
                                       rs.getInt(6),
                                       rs.getString(7),
                                       rs.getString(8),
                                       rs.getString(9),
                                       rs.getString(10),
                                       rs.getDouble(11),
                                       rs.getString(12),
                                       rs.getString(13),
                                       rs.getString(14),
                                       rs.getString(15),
                                       rs.getString(16),
                                       rs.getString(17),
                                       rs.getString(18),
                                       rs.getString(19),
                                       rs.getString(20),
                                       rs.getString(21),
                                       rs.getString(22),
                                       rs.getString(23),
                                       rs.getString(24),
                                       rs.getString(25),
                                       rs.getInt(26),
                                       rs.getString(27)));
         }
         
         
         
         
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      } finally{
         close(pstmt);
         close(rs);
      }
      
      return psmList;
   }

   public ArrayList<PetSitterMatchingJoin> searchPetSitterName(Connection conn, int bigdog, int medic, int olddog,
         int patientdog, int resume, String searchname) {
      
      
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      
      ArrayList<PetSitterMatchingJoin> psmList = null;
      
      String query = prop.getProperty("searchPetsitterName");
      
      StringBuilder queryap = new StringBuilder();

      
      queryap.append(query);
      
      if(bigdog==1){
         queryap.append(" and canlarge='Y'");
      }
      if(medic==1){
         queryap.append(" and canmedic='Y'");
      }
      if(olddog==1){
         queryap.append(" and canold='Y'");
      }
      if(patientdog==1){
         queryap.append(" and cansick='Y'");
      }
      if(resume==1){
         queryap.append(" and islicense='Y'");
      }
      
      query = queryap.toString();
      
      
      try {
         pstmt = conn.prepareStatement(query);
         
         pstmt.setString(1,"%"+searchname+"%");
         
         rs=pstmt.executeQuery();
         
         psmList = new ArrayList<PetSitterMatchingJoin>();
         
         while(rs.next()){
            psmList.add(new PetSitterMatchingJoin(rs.getInt(1),
                                       rs.getString(2),
                                       rs.getString(3),
                                       rs.getString(4),
                                       rs.getInt(5),
                                       rs.getInt(6),
                                       rs.getString(7),
                                       rs.getString(8),
                                       rs.getString(9),
                                       rs.getString(10),
                                       rs.getDouble(11),
                                       rs.getString(12),
                                       rs.getString(13),
                                       rs.getString(14),
                                       rs.getString(15),
                                       rs.getString(16),
                                       rs.getString(17),
                                       rs.getString(18),
                                       rs.getString(19),
                                       rs.getString(20),
                                       rs.getString(21),
                                       rs.getString(22),
                                       rs.getString(23),
                                       rs.getString(24),
                                       rs.getString(25),
                                       rs.getInt(26),
                                       rs.getString(27)));
         }
         
         
         
         
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      } finally{
         close(pstmt);
         close(rs);
      }
      System.out.println("DAO : " + psmList);
      return psmList;
   }

   public PetSitterMatchingJoin selectDetailMatching(Connection conn, int matchno) {
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      
      PetSitterMatchingJoin psm = null;
      
      String query = prop.getProperty("selectDetailMatching");
      
      try {
         pstmt = conn.prepareStatement(query);
         
         pstmt.setInt(1,matchno);
         
         rs=pstmt.executeQuery();
         
         while(rs.next()){
            psm = new PetSitterMatchingJoin(rs.getInt(1),
                                       rs.getString(2),
                                       rs.getString(3),
                                       rs.getString(4),
                                       rs.getInt(5),
                                       rs.getInt(6),
                                       rs.getString(7),
                                       rs.getString(8),
                                       rs.getString(9),
                                       rs.getString(10),
                                       rs.getDouble(11),
                                       rs.getString(12),
                                       rs.getString(13),
                                       rs.getString(14),
                                       rs.getString(15),
                                       rs.getString(16),
                                       rs.getString(17),
                                       rs.getString(18),
                                       rs.getString(19),
                                       rs.getString(20),
                                       rs.getString(21),
                                       rs.getString(22),
                                       rs.getString(23),
                                       rs.getString(24),
                                       rs.getString(25),
                                       rs.getInt(26),
                                       rs.getString(27));
         }
         
         
         
         
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      } finally{
         close(pstmt);
         close(rs);
      }
      
      return psm;
   }

   public int insertMatching(Connection conn, String sitterId, int price, String wanttosay, String specialnote) {
      PreparedStatement pstmt = null;
      int result = 0;
      
      Matching mt = null;
      
      String query = prop.getProperty("insertMatching");
      
      try{
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1, sitterId);
         pstmt.setInt(2, price);
         pstmt.setString(3, wanttosay);
         pstmt.setString(4, specialnote);
         
         result = pstmt.executeUpdate();
      } catch(SQLException e){
         e.printStackTrace();
      } finally {
         close(pstmt);
      }
      
      return result;
   }

   public int insertHouseMatching(Connection conn, String userId, int price, String wanttosay, String specialnote, Date caredate, int countpet) {
      PreparedStatement pstmt = null;
      int result = 0;
      
      Matching mt = null;
      
      String query = prop.getProperty("insertHouseMatching");
      
      try{
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1, userId);
         pstmt.setDate(2, caredate);
         pstmt.setInt(3, price);
         pstmt.setString(4, wanttosay);
         pstmt.setString(5, specialnote);
         pstmt.setInt(6, countpet);
         
         result = pstmt.executeUpdate();
      } catch(SQLException e){
         e.printStackTrace();
      } finally {
         close(pstmt);
      }
      
      return result;
   }

   public ArrayList<MatchingUserJoin> selectHouseMatching(Connection conn) {
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      
      ArrayList<MatchingUserJoin> mList = null;
      
      String query = prop.getProperty("selectHouseMatching");
      
      try {
         pstmt = conn.prepareStatement(query);
         rs=pstmt.executeQuery();
         
         mList = new ArrayList<MatchingUserJoin>();
         
         while(rs.next()){
            mList.add(new MatchingUserJoin(rs.getInt(1),
                                    rs.getString(2),
                                    rs.getString(3),
                                    rs.getString(4),
                                    rs.getDate(5),
                                    rs.getInt(6),
                                    rs.getString(7),
                                    rs.getString(8),
                                    rs.getString(9),
                                    rs.getString(10),
                                    rs.getString(11),
                                    rs.getInt(12),
                                    rs.getString(13),
                                    rs.getString(14),
                                    rs.getString(15),
                                    rs.getString(16),
                                    rs.getInt(17)));
            
         }
      } catch (SQLException e) {

         e.printStackTrace();
      } finally{
         close(pstmt);
         close(rs);
      }

      return mList;
   }

   public ArrayList<MatchingUserJoin> selectHouseMatching(Connection conn, String userId) {
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      
      ArrayList<MatchingUserJoin> mList = null;
      
      String query = prop.getProperty("searchHouseMatching");
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1,userId);
         
         rs=pstmt.executeQuery();
         
         mList = new ArrayList<MatchingUserJoin>();
         
         while(rs.next()){
            mList.add(new MatchingUserJoin(rs.getInt(1),
                                    rs.getString(2),
                                    rs.getString(3),
                                    rs.getString(4),
                                    rs.getDate(5),
                                    rs.getInt(6),
                                    rs.getString(7),
                                    rs.getString(8),
                                    rs.getString(9),
                                    rs.getString(10),
                                    rs.getString(11),
                                    rs.getInt(12),
                                    rs.getString(13),
                                    rs.getString(14),
                                    rs.getString(15),
                                    rs.getString(16),
                                    rs.getInt(17)));
            
         }
      } catch (SQLException e) {

         e.printStackTrace();
      } finally{
         close(pstmt);
         close(rs);
      }

      return mList;
   }

   public MatchingUserJoin searchHouseMatching(Connection conn, String userId) {
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      
      MatchingUserJoin m = null;
      
      String query = prop.getProperty("searchHouseMatching");
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1,userId);
         
         rs=pstmt.executeQuery();
         
         
         while(rs.next()){
            m = new MatchingUserJoin(rs.getInt(1),
                                    rs.getString(2),
                                    rs.getString(3),
                                    rs.getString(4),
                                    rs.getDate(5),
                                    rs.getInt(6),
                                    rs.getString(7),
                                    rs.getString(8),
                                    rs.getString(9),
                                    rs.getString(10),
                                    rs.getString(11),
                                    rs.getInt(12),
                                    rs.getString(13),
                                    rs.getString(14),
                                    rs.getString(15),
                                    rs.getString(16),
                                    rs.getInt(17));
            
         }
      } catch (SQLException e) {

         e.printStackTrace();
      } finally{
         close(pstmt);
         close(rs);
      }

      return m;
   }

   public int updateMatching(Connection conn, String muserid) {
      PreparedStatement pstmt = null;
      int result = 0;
      
      String query = prop.getProperty("updateMatching");
      
      try{
         pstmt = conn.prepareStatement(query);
         
         pstmt.setString(1, muserid);
         
         result = pstmt.executeUpdate();
      } catch(SQLException e){
         e.printStackTrace();
      } finally{
         close(pstmt);
      }
      return result;
   }

   public int insertMatchingHouse(Connection conn, String muserid, String sitterid, String mspnote, String msay, int mprice,
         Date mdate, int petcount) {
      PreparedStatement pstmt = null;
      int result = 0;
      
      String query = prop.getProperty("insertMatchinghouse");
      
      try{
         pstmt = conn.prepareStatement(query);
         
         pstmt.setString(1, muserid);
         pstmt.setString(2, sitterid);
         pstmt.setString(3, mspnote);
         pstmt.setString(4, msay);
         pstmt.setInt(5, mprice);
         pstmt.setDate(6, mdate);
         pstmt.setInt(7, petcount);
         
         result = pstmt.executeUpdate();
         
      } catch(SQLException e){
         e.printStackTrace();
      } finally{
         close(pstmt);
      }
      return result;

   }

}