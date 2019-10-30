package user.model.service;
import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import petSitter.model.vo.PetSitter;
import user.model.dao.MyMatchingDao;
import matching.model.vo.Matching;

public class MyMatchingService {
	MyMatchingDao mmd = new MyMatchingDao();
	public MyMatchingService() {
		
	}
	//펫시터인지 검사하고 모든객체 가져오기
	public PetSitter findSitter(String userId) {
		Connection conn= getConnection();
		
		PetSitter ps = new MyMatchingDao().findSitter(conn,userId);
		
		close(conn);
		
		
		return ps;
	}
	public ArrayList<Matching> viewYetMatching(String userId) {
		Connection conn = getConnection();
		
		ArrayList<Matching> yList1 = mmd.yetMatchingView(conn,userId);
		
		close(conn);
		
		
		return yList1;
	}
	public ArrayList<Matching> viewYetMatching2(String userId) {
		Connection conn = getConnection();
		
		ArrayList<Matching> yList2 = mmd.yetMatchingView2(conn,userId);
		if(yList2 == null) {
			System.out.println("service null확인");
			return yList2;
		}
		
		close(conn);
		
		return yList2;
	}
	public ArrayList<Matching> viewNowMatching(String userId) {
		Connection conn = getConnection();
		
		ArrayList<Matching> nList1 = mmd.nowMatchingView(conn, userId);
				
		close(conn);
		return nList1;
	}
	public ArrayList<Matching> viewNowMatching2(String userId) {
		Connection conn = getConnection();
		
		ArrayList<Matching> nList2 = mmd.nowMatchingView2(conn, userId);
				
		close(conn);
		return nList2;
	}
	public ArrayList<Matching> viewNowMatching3(String userId) {
		Connection conn = getConnection();
		
		ArrayList<Matching> nList3 = mmd.nowMatchingView3(conn, userId);
				
		close(conn);
		return nList3;
	}
	public ArrayList<Matching> viewNowMatching4(String userId) {
		Connection conn = getConnection();
		
		ArrayList<Matching> nList4 = mmd.nowMatchingView4(conn, userId);
				
		close(conn);
		return nList4;
	}
	public ArrayList<Matching> viewNowMatching5(String userId) {
		Connection conn = getConnection();
		
		ArrayList<Matching> nList5 = mmd.nowMatchingView5(conn, userId);
				
		close(conn);
		return nList5;
	}
	public ArrayList<Matching> viewNowMatching6(String userId) {
		Connection conn = getConnection();
		
		ArrayList<Matching> nList6 = mmd.nowMatchingView6(conn, userId);
				
		close(conn);
		return nList6;
	}
	public ArrayList<Matching> viewNowMatching7(String userId) {
		Connection conn = getConnection();
		
		ArrayList<Matching> nList7 = mmd.nowMatchingView7(conn, userId);
				
		close(conn);
		return nList7;
	}
	public ArrayList<Matching> viewNowMatching8(String userId) {
		Connection conn = getConnection();
		
		ArrayList<Matching> nList8 = mmd.nowMatchingView8(conn, userId);
				
		close(conn);
		return nList8;
	}
	public ArrayList<Matching> viewEndMatching(String userId) {
		Connection conn = getConnection();
		
		ArrayList<Matching> eList1 = mmd.endMatchingView1(conn, userId);
				
		close(conn);
		return eList1;
	}
	public ArrayList<Matching> viewEndMatching2(String userId) {
		Connection conn = getConnection();
		
		ArrayList<Matching> eList2 = mmd.endMatchingView2(conn, userId);
				
		close(conn);
		return eList2;
	}
	public ArrayList<Matching> viewEndMatching3(String userId) {
		Connection conn = getConnection();
		
		ArrayList<Matching> eList3 = mmd.endMatchingView3(conn, userId);
				
		close(conn);
		return eList3;
	}
	public ArrayList<Matching> viewEndMatching4(String userId) {
		Connection conn = getConnection();
		
		ArrayList<Matching> eList4 = mmd.endMatchingView4(conn, userId);
				
		close(conn);
		return eList4;
	}

	

}
