package user.model.dao;

import static common.JDBCTemplate.*;

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

import petSitter.model.vo.PetSitter;
import user.model.vo.Matching;

public class MyMatchingDao {
	Properties prop = new Properties();
	
	public MyMatchingDao() {
		String fileName = MyMatchingDao.class.getResource("/sql/user/user-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Matching> yetMatchingView(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Matching> yList1 = null;
		
		String query = prop.getProperty("y1Matching");
		
		try {
			pstmt=conn.prepareStatement(query);
			
			pstmt.setString(1, userId);
			
			rs=pstmt.executeQuery();
			yList1 = new ArrayList<Matching>();
			while(rs.next()) {
			Matching m = new Matching (rs.getInt("matchno"),
										rs.getString("sitterId"),
										rs.getString("userId"),
										rs.getString("isHome"),
									    rs.getDate("careDate"),
									    rs.getInt("price"),
									    rs.getString("wantToSay"),
									    rs.getString("special_Note"),
									    rs.getString("thumbnail"),
									    rs.getString("regStatus"),
									    rs.getString("countPet"));
			yList1.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		return yList1;
	}
	//펫시터 자격 검사
	public PetSitter findSitter(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		
		ResultSet rs = null;
		
		String query = prop.getProperty("findSitter");
		
		PetSitter ps = null;
			try {
				pstmt=conn.prepareStatement(query);
				
				pstmt.setString(1, userId);
				
				rs = pstmt.executeQuery();

				while(rs.next()) {
					ps = new PetSitter(rs.getString("userId"));
				}


				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(pstmt);
				close(rs);
			}
			
		return ps;
	}

	public ArrayList<Matching> yetMatchingView2(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Matching> yList2 = null;
		
		String query = prop.getProperty("y2Matching");
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			yList2 = new ArrayList<Matching>();
			while(rs.next()) {
			Matching m = new Matching (rs.getInt("matchno"),
					rs.getString("sitterId"),
					rs.getString("userId"),
					rs.getString("isHome"),
				    rs.getDate("careDate"),
				    rs.getInt("price"),
				    rs.getString("wantToSay"),
				    rs.getString("special_Note"),
				    rs.getString("thumbnail"),
				    rs.getString("regStatus"),
				    rs.getString("countPet"));
				yList2.add(m);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return yList2;
	}

	public ArrayList<Matching> nowMatchingView(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Matching> nList1 = null;
		
		String query = prop.getProperty("n1Matching");
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			nList1 = new ArrayList<Matching>();
			while(rs.next()) {
			Matching m = new Matching (rs.getString("sitterId"),
										rs.getString("userId"),
										rs.getString("isHome"),
									    rs.getDate("careDate"),
									    rs.getString("regStatus"));
				nList1.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return nList1;
	}

	public ArrayList<Matching> nowMatchingView2(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Matching> nList2 = null;
		
		String query = prop.getProperty("n2Matching");
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			nList2 = new ArrayList<Matching>();
			while(rs.next()) {
			Matching m = new Matching (rs.getString("sitterId"),
										rs.getString("userId"),
										rs.getString("isHome"),
									    rs.getDate("careDate"),
									    rs.getString("regStatus"));
				nList2.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return nList2;
	}

	public ArrayList<Matching> nowMatchingView3(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Matching> nList3 = null;
		
		String query = prop.getProperty("n3Matching");
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			nList3 = new ArrayList<Matching>();
			while(rs.next()) {
			Matching m = new Matching (rs.getString("sitterId"),
										rs.getString("userId"),
										rs.getString("isHome"),
									    rs.getDate("careDate"),
									    rs.getString("regStatus"));
				nList3.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return nList3;
	}

	public ArrayList<Matching> nowMatchingView4(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Matching> nList4 = null;
		
		String query = prop.getProperty("n4Matching");
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			nList4 = new ArrayList<Matching>();
			while(rs.next()) {
			Matching m = new Matching (rs.getString("sitterId"),
										rs.getString("userId"),
										rs.getString("isHome"),
									    rs.getDate("careDate"),
									    rs.getString("regStatus"));
				nList4.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return nList4;
	}

	public ArrayList<Matching> nowMatchingView5(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Matching> nList5 = null;
		
		String query = prop.getProperty("n5Matching");
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			nList5 = new ArrayList<Matching>();
			while(rs.next()) {
			Matching m = new Matching (rs.getString("sitterId"),
										rs.getString("userId"),
										rs.getString("isHome"),
									    rs.getDate("careDate"),
									    rs.getString("regStatus"));
				nList5.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return nList5;
	}

	public ArrayList<Matching> nowMatchingView6(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Matching> nList6 = null;
		
		String query = prop.getProperty("n6Matching");
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			nList6 = new ArrayList<Matching>();
			while(rs.next()) {
			Matching m = new Matching (rs.getString("sitterId"),
										rs.getString("userId"),
										rs.getString("isHome"),
									    rs.getDate("careDate"),
									    rs.getString("regStatus"));
				nList6.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return nList6;
	}

	public ArrayList<Matching> nowMatchingView7(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Matching> nList7 = null;
		
		String query = prop.getProperty("n7Matching");
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			nList7 = new ArrayList<Matching>();
			while(rs.next()) {
			Matching m = new Matching (rs.getString("sitterId"),
										rs.getString("userId"),
										rs.getString("isHome"),
									    rs.getDate("careDate"),
									    rs.getString("regStatus"));
				nList7.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return nList7;
	}

	public ArrayList<Matching> nowMatchingView8(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Matching> nList8 = null;
		
		String query = prop.getProperty("n8Matching");
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			nList8 = new ArrayList<Matching>();
			while(rs.next()) {
			Matching m = new Matching (rs.getString("sitterId"),
										rs.getString("userId"),
										rs.getString("isHome"),
									    rs.getDate("careDate"),
									    rs.getString("regStatus"));
				nList8.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return nList8;
	}

	public ArrayList<Matching> endMatchingView1(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Matching> eList1 = null;
		
		String query = prop.getProperty("e1Matching");
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			eList1 = new ArrayList<Matching>();
			while(rs.next()) {
			Matching m = new Matching (rs.getString("sitterId"),
										rs.getString("userId"),
										rs.getString("isHome"),
									    rs.getDate("careDate"),
									    rs.getString("regStatus"));
				eList1.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return eList1;
	}

	public ArrayList<Matching> endMatchingView2(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Matching> eList2 = null;
		
		String query = prop.getProperty("e2Matching");
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			eList2 = new ArrayList<Matching>();
			while(rs.next()) {
			Matching m = new Matching (rs.getString("sitterId"),
										rs.getString("userId"),
										rs.getString("isHome"),
									    rs.getDate("careDate"),
									    rs.getString("regStatus"));
				eList2.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return eList2;
	}

	public ArrayList<Matching> endMatchingView3(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Matching> eList3 = null;
		
		String query = prop.getProperty("e3Matching");
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			eList3 = new ArrayList<Matching>();
			while(rs.next()) {
			Matching m = new Matching (rs.getString("sitterId"),
										rs.getString("userId"),
										rs.getString("isHome"),
									    rs.getDate("careDate"),
									    rs.getString("regStatus"));
				eList3.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return eList3;
	}

	public ArrayList<Matching> endMatchingView4(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Matching> eList4 = null;
		
		String query = prop.getProperty("e4Matching");
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			eList4 = new ArrayList<Matching>();
			while(rs.next()) {
			Matching m = new Matching (rs.getString("sitterId"),
										rs.getString("userId"),
										rs.getString("isHome"),
									    rs.getDate("careDate"),
									    rs.getString("regStatus"));
				eList4.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return eList4;
	}
	

}
