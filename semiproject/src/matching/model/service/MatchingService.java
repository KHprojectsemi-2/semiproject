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
import petSitter.model.vo.PetSitter;


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

	public int insertMatching(String sitterId, int price, String wanttosay, String specialnote, String matImgName) {
		Connection conn = getConnection();
		
		int result = new MatchingDao().insertMatching(conn,sitterId,price,wanttosay,specialnote,matImgName);
		
		if(result>0)
			commit(conn);
		else
			rollback(conn);
		
		close(conn);
		return result;
	}

	public int insertHouseMatching(String userId, int price, String wanttosay, String specialnote, Date caredate, int countpet, String matImgName) {
		Connection conn = getConnection();
		
		int result = new MatchingDao().insertHouseMatching(conn,userId,price,wanttosay,specialnote,caredate,countpet,matImgName);
		
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

	public int updateMatchingHouse(String muserid) {
		Connection conn = getConnection();
		int result = new MatchingDao().updateMatchingHouse(conn,muserid);
		
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

	public int insertMatching(String muserid, String sitterid, String mspnote, String msay, int mprice, Date mdate,
			int petcount) {
		Connection conn = getConnection();
		int result = new MatchingDao().insertMatching(conn,muserid,sitterid,mspnote,msay,mprice,mdate,petcount);
		
		if(result>0){
			commit(conn);
		}else{
			rollback(conn);
		}
		return result;
	}

	public ArrayList<Matching> selectDate(String sitterId) {
		Connection conn = getConnection();
		
		ArrayList<Matching> mList = new MatchingDao().selectDate(conn,sitterId);
		
		close(conn);
		return mList;
	}

	public PetSitter isPetSitter(String sitterId) {
		Connection conn = getConnection();
		PetSitter ps = new MatchingDao().isPetSitter(conn,sitterId);
		
		close(conn);
		
		return ps;
	}

	public Matching isDuplicate(String sitterid) {
		Connection conn = getConnection();
		Matching mt = new MatchingDao().isDuplicate(conn,sitterid);
		
		close(conn);
		
		return mt;
	}

	public int deleteProfile(int matno) {
		Connection conn = getConnection();
		int result = new MatchingDao().deleteProfile(conn,matno);
		
		if(result>0){
			commit(conn);
		}else{
			rollback(conn);
		}
		return result;
	}

	public int updateProfile(String sitterId, int price, String wanttosay, String specialnote) {
		Connection conn = getConnection();
		int result = new MatchingDao().updateProfile(conn,sitterId,price,wanttosay,specialnote);
		
		if(result>0){
			commit(conn);
		}else{
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public Matching myApply(String sitterid) {
		Connection conn = getConnection();
		
		Matching mt = new MatchingDao().myApply(conn,sitterid);
		
		close(conn);
		return mt;
	}

	public Matching isHouseDuplicate(String userid) {
		Connection conn = getConnection();
		Matching mt = new MatchingDao().isHouseDuplicate(conn,userid);
		
		close(conn);
		
		return mt;
	}

	public Matching myHouseApply(String userid) {
		Connection conn = getConnection();
		
		Matching mt = new MatchingDao().myHouseApply(conn,userid);
		
		close(conn);
		return mt;
	}

	public int updateHouseProfile(String userId, int price, String wanttosay, String specialnote) {
		Connection conn = getConnection();
		int result = new MatchingDao().updateHouseProfile(conn,userId,price,wanttosay,specialnote);
		
		if(result>0){
			commit(conn);
		}else{
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public int adminDeleteProfile(int matno) {
		Connection conn = getConnection();
		int result = new MatchingDao().adminDeleteProfile(conn,matno);
		
		if(result>0){
			commit(conn);
		}else{
			rollback(conn);
		}
		return result;
	}

	public ArrayList<PetSitterMatchingJoin> deletedPetSitter() {
		Connection conn = getConnection();
		
		ArrayList<PetSitterMatchingJoin> psmList = new MatchingDao().deletedPetSitter(conn);
		
		close(conn);
		
		return psmList;
	}

	public int recoveryInvite(int matchno) {
		Connection conn = getConnection();
		int result = new MatchingDao().recoveryInvite(conn,matchno);
		
		if(result>0){
			commit(conn);
		}else{
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public ArrayList<MatchingUserJoin> admindeletedhome() {
		Connection conn = getConnection();
		
		ArrayList<MatchingUserJoin> mList = new MatchingDao().admindeletedhome(conn);
		
		close(conn);
		
		return mList;
	}

	public ArrayList<MatchingUserJoin> houseNameSearch(String searchname) {
		Connection conn = getConnection();
		
		ArrayList<MatchingUserJoin> mList = new MatchingDao().houseNameSearch(conn,searchname);
		
		close(conn);
		
		return mList;
	}

}

