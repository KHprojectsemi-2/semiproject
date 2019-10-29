package common;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JDBCTemplate {
   public static Connection getConnection() {
      Connection conn = null;
      Properties prop = new Properties();
      
      String fileName = JDBCTemplate.class.getResource("../sql/driver.properties").getPath();
   
      try {
         prop.load(new FileReader(fileName));
         
         String driver = prop.getProperty("driver");
         String url = prop.getProperty("url");
         String user = prop.getProperty("user");
         String password = prop.getProperty("password");
         
         //1. 클래스 객체 등록, Driver 등록
        
         Class.forName(driver);
         
         //2. DBMS와 연결
         conn = DriverManager.getConnection(url, user, password);

         conn.setAutoCommit(false);   //commit, rollback작업을 제어하기위한 메소드
         //기본값은 true, false일경우 작업제어를 우리가 할수 있게된다.
         
      } catch(FileNotFoundException e) {
         e.printStackTrace();
      } catch(ClassNotFoundException e) {
         e.printStackTrace();
      } catch(SQLException e) {
         e.printStackTrace();
      } catch (IOException e) {
         e.printStackTrace();
      }
     
      return conn;   // 연결한 정보를 사용하기 위해서 연결한 정보를 사용하기 위한 장소로 반환
   }
   
   public static void close(Connection conn) {
      try {
         if(conn != null && !conn.isClosed()) {   // 넘어온 값이 null이 아니고 닫혀있지 않으면
            conn.close();
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }
   }
   
   public static void close(Statement stmt) {
      try {
         if(stmt != null && !stmt.isClosed()) {
            stmt.close();
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }
   }
   
   public static void close(ResultSet rs) {
      try {
         if(rs != null && !rs.isClosed()) {
            rs.close();
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }
   }
   
   public static void commit(Connection conn) {
      try {
         if(conn != null && !conn.isClosed()) {
            conn.commit();
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }
   }
   
   public static void rollback(Connection conn) {
      try {
         if(conn != null && !conn.isClosed()) {
            conn.rollback();
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }
   }
}