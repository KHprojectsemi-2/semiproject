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
import petSitter.model.vo.PetSitter;

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

	public int insertMatching(Connection conn, String sitterId, int price, String wanttosay, String specialnote, String matImgName) {
		PreparedStatement pstmt = null;
		int result = 0;

		
		String query = prop.getProperty("insertMatching");
		
		try{
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sitterId);
			pstmt.setInt(2, price);
			pstmt.setString(3, wanttosay);
			pstmt.setString(4, specialnote);
			pstmt.setString(5, matImgName);
			
			result = pstmt.executeUpdate();
		} catch(SQLException e){
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int insertHouseMatching(Connection conn, String userId, int price, String wanttosay, String specialnote, Date caredate, int countpet, String matImgName) {
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
			pstmt.setString(6, matImgName);
			pstmt.setInt(7, countpet);
			
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
												rs.getString(5),
												rs.getDate(6),
												rs.getInt(7),
												rs.getString(8),
												rs.getString(9),
												rs.getString(10),
												rs.getString(11),
												rs.getString(12),
												rs.getInt(13),
												rs.getString(14),
												rs.getString(15),
												rs.getString(16),
												rs.getString(17),
												rs.getInt(18)));
				
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
						rs.getString(5),
						rs.getDate(6),
						rs.getInt(7),
						rs.getString(8),
						rs.getString(9),
						rs.getString(10),
						rs.getString(11),
						rs.getString(12),
						rs.getInt(13),
						rs.getString(14),
						rs.getString(15),
						rs.getString(16),
						rs.getString(17),
						rs.getInt(18)));

				
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
						rs.getString(5),
						rs.getDate(6),
						rs.getInt(7),
						rs.getString(8),
						rs.getString(9),
						rs.getString(10),
						rs.getString(11),
						rs.getString(12),
						rs.getInt(13),
						rs.getString(14),
						rs.getString(15),
						rs.getString(16),
						rs.getString(17),
						rs.getInt(18));

				
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally{
			close(pstmt);
			close(rs);
		}

		return m;
	}

	public int updateMatchingHouse(Connection conn, String muserid) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateMatchingHouse");
		
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
			
			pstmt.setString(1, sitterid);
			pstmt.setString(2, muserid);
			pstmt.setDate(3, mdate);
			pstmt.setInt(4, mprice);
			pstmt.setString(5, msay);
			pstmt.setString(6, mspnote);
			pstmt.setInt(7, petcount);
			
			result = pstmt.executeUpdate();
			
		} catch(SQLException e){
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		return result;

	}

	public int insertMatching(Connection conn, String muserid, String sitterid, String mspnote, String msay, int mprice,
			Date mdate, int petcount) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertInviteMatching");
		
		try{
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, sitterid);
			pstmt.setString(2, muserid);
			pstmt.setDate(3, mdate);
			pstmt.setInt(4, mprice);
			pstmt.setString(5, msay);
			pstmt.setString(6, mspnote);
			pstmt.setInt(7, petcount);
			
			result = pstmt.executeUpdate();
			
		} catch(SQLException e){
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		return result;
	}

	public ArrayList<Matching> selectDate(Connection conn, String sitterId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<Matching> mList = null;
		
		String query = prop.getProperty("selectDate");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,sitterId);
			
			rs=pstmt.executeQuery();
			
			mList = new ArrayList<Matching>();
			
			while(rs.next()){
				mList.add(new Matching(rs.getDate("caredate")));
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally{
			close(pstmt);
			close(rs);
		}

		return mList;
	}

	public PetSitter isPetSitter(Connection conn, String sitterId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		PetSitter ps = null;
		
		String query = prop.getProperty("isPetSitter");
		
		try{
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sitterId);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				ps = new PetSitter(rs.getString(1));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			close(pstmt);
			close(rs);
		}
		System.out.println("DAO:"+ps);
		return ps;
	}

	public Matching isDuplicate(Connection conn, String sitterid) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		Matching mt = null;
		
		String query = prop.getProperty("isDuplicate");
		
		try{
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sitterid);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				mt = new Matching(rs.getString(1));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			close(pstmt);
			close(rs);
		}
		System.out.println("DAO:"+mt);
		return mt;
	}

	public int deleteProfile(Connection conn, int matno) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("deleteprofile");
		
		try{
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, matno);
			
			result = pstmt.executeUpdate();
			
		} catch(SQLException e){
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		return result;
	}

	public int updateProfile(Connection conn, String sitterId, int price, String wanttosay, String specialnote) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateProfile");
		
		try{
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, price);
			pstmt.setString(2,wanttosay);
			pstmt.setString(3, specialnote);
			pstmt.setString(4, sitterId);
			pstmt.setInt(5, 1);

			
			result = pstmt.executeUpdate();
		} catch(SQLException e){
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		return result;
	}

	public Matching myApply(Connection conn, String sitterid) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		Matching mt = null;
		
		String query = prop.getProperty("myApply");
		
		try{
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sitterid);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				mt = new Matching(rs.getInt(1),
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
									rs.getString(12));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			close(pstmt);
			close(rs);
		}
		System.out.println("DAO:"+mt);
		return mt;
	}

	public Matching isHouseDuplicate(Connection conn, String userid) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		Matching mt = null;
		
		String query = prop.getProperty("isHouseDuplicate");
		
		try{
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userid);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				mt = new Matching(rs.getInt(1),
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
						rs.getString(12));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			close(pstmt);
			close(rs);
		}
		return mt;
	}

	public Matching myHouseApply(Connection conn, String userid) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		Matching mt = null;
		
		String query = prop.getProperty("myHouseApply");
		
		try{
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userid);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				mt = new Matching(rs.getInt(1),
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
									rs.getString(12));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			close(pstmt);
			close(rs);
		}
		System.out.println("DAO:"+mt);
		return mt;
	}

	public int updateHouseProfile(Connection conn, String userId, int price, String wanttosay, String specialnote) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateHouseProfile");
		
		try{
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, price);
			pstmt.setString(2,wanttosay);
			pstmt.setString(3, specialnote);
			pstmt.setString(4, userId);
			pstmt.setInt(5, 1);

			
			result = pstmt.executeUpdate();
		} catch(SQLException e){
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		return result;
	}

	public int adminDeleteProfile(Connection conn, int matno) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("admindeleteprofile");
		
		try{
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, matno);
			
			result = pstmt.executeUpdate();
			
		} catch(SQLException e){
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		return result;
	}

	public ArrayList<PetSitterMatchingJoin> deletedPetSitter(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<PetSitterMatchingJoin> psmList = null;
		
		String query = prop.getProperty("deletedPetsitter");

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

	public int recoveryInvite(Connection conn, int matchno) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("recoveryInvite");
		
		try{
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1,matchno);

			result = pstmt.executeUpdate();
		} catch(SQLException e){
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		return result;
	}

	public ArrayList<MatchingUserJoin> admindeletedhome(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<MatchingUserJoin> mList = null;
		
		String query = prop.getProperty("admindeletedhome");
		
		try {
			pstmt = conn.prepareStatement(query);
			rs=pstmt.executeQuery();
			
			mList = new ArrayList<MatchingUserJoin>();
			
			while(rs.next()){
				mList.add(new MatchingUserJoin(rs.getInt(1),
												rs.getString(2),
												rs.getString(3),
												rs.getString(4),
												rs.getString(5),
												rs.getDate(6),
												rs.getInt(7),
												rs.getString(8),
												rs.getString(9),
												rs.getString(10),
												rs.getString(11),
												rs.getString(12),
												rs.getInt(13),
												rs.getString(14),
												rs.getString(15),
												rs.getString(16),
												rs.getString(17),
												rs.getInt(18)));
				
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally{
			close(pstmt);
			close(rs);
		}

		return mList;
	}

	public ArrayList<MatchingUserJoin> houseNameSearch(Connection conn, String searchname) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<MatchingUserJoin> mList = null;
		
		String query = prop.getProperty("housenamesearch");
		
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1,"%"+searchname+"%");
			
			rs=pstmt.executeQuery();
			
			mList = new ArrayList<MatchingUserJoin>();
			
			while(rs.next()){
				mList.add(new MatchingUserJoin(rs.getInt(1),
												rs.getString(2),
												rs.getString(3),
												rs.getString(4),
												rs.getString(5),
												rs.getDate(6),
												rs.getInt(7),
												rs.getString(8),
												rs.getString(9),
												rs.getString(10),
												rs.getString(11),
												rs.getString(12),
												rs.getInt(13),
												rs.getString(14),
												rs.getString(15),
												rs.getString(16),
												rs.getString(17),
												rs.getInt(18)));
				
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally{
			close(pstmt);
			close(rs);
		}

		return mList;
	}


}
