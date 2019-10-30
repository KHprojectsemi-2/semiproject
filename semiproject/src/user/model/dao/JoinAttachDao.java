package user.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import user.model.vo.JoinAttach;
import user.model.vo.User;

public class JoinAttachDao {

   private Properties prop = new Properties();

   public JoinAttachDao() {

      String fileName = JoinAttachDao.class.getResource("/sql/user/joinattach-query.properties").getPath();
      System.out.println(JoinAttachDao.class.getResource("/sql/user/joinattach-query.properties").getPath());
      try {
         prop.load(new FileReader(fileName));
      } catch (FileNotFoundException e) {
         e.printStackTrace();
      } catch (IOException e) {
         e.printStackTrace();
      }

   }

   public int insertImg(Connection conn, ArrayList<JoinAttach> fileList) {

      PreparedStatement pstmt = null;
      int result = 0;
      
      String query = prop.getProperty("insertImg");
      
      try {
         for(int i=0;i<fileList.size();i++) {
            JoinAttach ja = fileList.get(i);
            pstmt = conn.prepareStatement(query);
            pstmt.setString(1, ja.getOriginName());
            pstmt.setString(2, ja.getChangeName());
            pstmt.setString(3, ja.getFilePath());
            
            result += pstmt.executeUpdate();

         }
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(pstmt);
      }

      // fileList가 가진 파일의 갯수만큼 모두 insert 되었다면
      if(result == fileList.size()) 
         return result;
      else
         return 0;
   }

   public int selectImgNo(Connection conn, String changeName) {

      PreparedStatement pstmt=null;
      ResultSet rs = null;
      User user = null;
      int fileNo =-1;
      String query = prop.getProperty("selectImgNo");
      
      try {
         pstmt = conn.prepareStatement(query);
         
         pstmt.setString(1, changeName);
         
         rs = pstmt.executeQuery();
         
         if(rs.next()) {   
            fileNo = rs.getInt("fileNo");
            
            System.out.println("DAO에서 생성된 유저 :" +user);
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         close(pstmt);
         close(rs);
      }
      
      return fileNo;
   
   }
}