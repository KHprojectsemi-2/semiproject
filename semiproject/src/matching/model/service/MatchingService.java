package matching.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.sql.Date;
import java.util.ArrayList;

import matching.model.dao.MatchingDao;
import matching.model.vo.Matching;
import matching.model.vo.MatchingUserJoin;
import matching.model.vo.PetSitterMatchingJoin;


public class MatchingService {
   public ArrayList<PetSitterMatchingJoin> selectPetSitter() {
      Connection conn = getConnection();
      
      ArrayList<PetSitterMatchingJoin> psmList = new MatchingDao().selectPetSitter(conn);
      
      close(conn);
      
      return psmList;
   }

   public ArrayList<PetSitterMatchingJoin> searchPetsitter(int bigdog, int medic, int olddog, int patientdog,
         int resume) {
      Connection conn = getConnection();
   
      
      ArrayList<PetSitterMatchingJoin> psmList = new MatchingDao().searchPetSitter(conn,bigdog,medic,olddog,patientdog,resume);
      
      close(conn);
      return psmList;
   }

   public ArrayList<PetSitterMatchingJoin> searchPetsitterName(int bigdog, int medic, int olddog, int patientdog,
         int resume, String searchname) {
      Connection conn = getConnection();
      
      ArrayList<PetSitterMatchingJoin> psmList = new MatchingDao().searchPetSitterName(conn,bigdog,medic,olddog,patientdog,resume,searchname);
      
      close(conn);
      
      return psmList;
   }

   public PetSitterMatchingJoin selectDetailMatching(int matchno) {
      Connection conn = getConnection();
      
      PetSitterMatchingJoin psm = new MatchingDao().selectDetailMatching(conn,matchno);
      
      close(conn);
      return psm;
   }

   public int insertMatching(String sitterId, int price, String wanttosay, String specialnote) {
      Connection conn = getConnection();
      
      int result = new MatchingDao().insertMatching(conn,sitterId,price,wanttosay,specialnote);
      
      if(result>0)
         commit(conn);
      else
         rollback(conn);
      
      close(conn);
      return result;
   }

   public int insertHouseMatching(String userId, int price, String wanttosay, String specialnote, Date caredate, int countpet) {
      Connection conn = getConnection();
      
      int result = new MatchingDao().insertHouseMatching(conn,userId,price,wanttosay,specialnote,caredate,countpet);
      
      if(result>0)
         commit(conn);
      else
         rollback(conn);
      
      close(conn);
      return result;
   }

   public ArrayList<MatchingUserJoin> selectHouseMatching() {
      Connection conn = getConnection();
      
      ArrayList<MatchingUserJoin> mList = new MatchingDao().selectHouseMatching(conn);
      
      close(conn);
      
      return mList;
   }


   public MatchingUserJoin searchHouseMatching(String userId) {
      Connection conn = getConnection();
      
      MatchingUserJoin m = new MatchingDao().searchHouseMatching(conn,userId);
      
      close(conn);
      return m;
   }

   public int updateMatching(String muserid) {
      Connection conn = getConnection();
      int result = new MatchingDao().updateMatching(conn,muserid);
      
      if(result>0){
         commit(conn);
      }else{
         rollback(conn);
      }
      
      close(conn);
      
      return result;
   }

   public int insertMatchingHouse(String muserid, String sitterid, String mspnote, String msay, int mprice, Date mdate,
         int petcount) {
      Connection conn = getConnection();
      int result = new MatchingDao().insertMatchingHouse(conn,muserid,sitterid,mspnote,msay,mprice,mdate,petcount);
      
      if(result>0){
         commit(conn);
      }else{
         rollback(conn);
      }
      return result;
   }
}