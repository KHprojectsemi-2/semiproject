package diary.model.dao;
import static common.JDBCTemplate.close;

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

import diary.model.vo.Diary;
import diary.model.vo.JoinAttach;
import matching.model.vo.Matching;
import petSitter.model.vo.PetSitter;
public class DiaryDao {
	Properties prop = new Properties();
	// 기본 생성자
	public DiaryDao() {
		String fileName = DiaryDao.class.getResource("/sql/diary/diary-query.properties").getPath();
	      
	      try {
	         prop.load(new FileReader(fileName));
	      } catch (FileNotFoundException e) {
	         e.printStackTrace();
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
	}
	/*
	 *  돌봄일지 등록
	 */
	public int insertDiary(Connection conn, Diary d) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertDiary");
		System.out.println("돌봄일지 등록 dao");
		
		System.out.println("매칭넘버 : " + d.getMatchNo());
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, d.getMatchNo());
			pstmt.setString(2, d.getDiaryContent());
			pstmt.setString(3, d.getDiaryImage());
			pstmt.setString(4, d.getIsToilet());
			pstmt.setString(5, d.getIsWalk());
			pstmt.setString(6, d.getIsMedic());
			pstmt.setString(7, d.getChkNeeds());
			pstmt.setString(8, d.getReview());
			pstmt.setString(9, d.getDiaryStatus());
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int insertAttachment(Connection conn, ArrayList<JoinAttach> fileList) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertAttachment");
		
		try {
			for(int i=0; i<fileList.size(); i++) {
				JoinAttach at = fileList.get(i);
				
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, at.getOriginName());
				pstmt.setString(2, at.getChangeName());
				pstmt.setString(3, at.getFilePath());
				pstmt.setInt(4, at.getFileLevel());
				
				result += pstmt.executeUpdate();
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		// fileList가 가진 파일 갯수만큼의 행이 모두 insert가 되었다면
		if(result == fileList.size()) {
			return result;
		}else {
			return 0;
		}
	}
	
	/**
	 * 돌봄일지 보기
	 * @param conn
	 * @param dNo
	 * @return
	 */
	public Diary viewDiary(Connection conn, int dNo) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		Diary diary = null;
		
		String query = prop.getProperty("viewDiary");
		
		try {
			pstmt = conn.prepareStatement(query);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return diary;
	}
	public PetSitter checkPetsitter(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		PetSitter ps = null;
		
		String query = prop.getProperty("checkPetsitter");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ps = new PetSitter(rs.getString("USERID"),
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
						rs.getString("CHKRESUME"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		return ps;
	}
	
	
	
	/*
	 * 돌봄일지 리스트
	 */
	public ArrayList<Diary> selectList(Connection conn) {
		System.out.println("돌봄일지 리스트 다오");
		// Statement로 한 번 해보기!
		Statement stmt = null;
		ResultSet rs = null;
		
		ArrayList<Diary> arr = null;
		
		String query = prop.getProperty("selectList");
		
		try {
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(query);
			arr = new ArrayList<Diary>();	// ArrayList는 기본 생성자로 항상 객체 만들어서 초기화하자
			
			while(rs.next()) {
				Diary d = new Diary(rs.getInt("DIARYNO"),
									rs.getInt("MATCHNO"),
									rs.getString("DIARYCONTENT"),
									rs.getString("DIARYIMAGE"),
									rs.getString("ISTOILET"),
									rs.getString("ISWALK"),
									rs.getString("ISMEDIC"),
									rs.getString("CHKNEEDS"),
									rs.getString("REVIEW"),
									rs.getInt("GRADE"),
									rs.getString("DIARYSTATUS")
						);
				arr.add(d);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(stmt);
		}
		return arr;
	}
	
	// 점수 주는 dao
	public int updateMember(Connection conn, Diary diary) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("viewOwner");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, diary.getGrade());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public Diary selectDiary(Connection conn, int dNo) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		Diary diary = null;
		String query = prop.getProperty("selectDiary");
		
		
		System.out.println("돌봄일지 확인 다오");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, dNo);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				diary = new Diary(rs.getInt("DIARYNO"),
									rs.getInt("MATCHNO"),
									rs.getString("DIARYCONTENT"),
									rs.getString("DIARYIMAGE"),
									rs.getString("ISTOILET"),
									rs.getString("ISWALK"),
									rs.getString("ISMEDIC"),
									rs.getString("CHKNEEDS"),
									rs.getString("REVIEW"),
									rs.getInt("GRADE"),
									rs.getString("DIARYSTATUS")
						);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(pstmt);
				close(rs);
			}
			return diary;
		}
	
	
	public Matching getMatchNo(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		Matching match = null;
		
		String query = prop.getProperty("getMatchNo");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			
			match = new Matching();
			
			if(rs.next()) {
				match = new Matching(rs.getInt("matchno"),
									 rs.getString("sitterid"),
									 rs.getString("userid"),
									 rs.getString("ishome"),
									 rs.getDate("caredate"),
									 rs.getInt("price"),
									 rs.getString("wanttosay"),
									 rs.getString("special_note"),
									 rs.getString("thumbnail"),
									 rs.getString("regstatus"),
									 rs.getString("isrest"),
									 rs.getString("countpet"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return match;
	}

}







