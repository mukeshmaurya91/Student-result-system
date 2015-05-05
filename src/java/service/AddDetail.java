package service;

import action.StudentAction;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Mukesh Kumar Maurya
 */
public class AddDetail {
    
   public String addDetail(StudentAction sa){
      String ret="ERROR";
     Connection conn = null;
      try {
          
         Class.forName("com.mysql.jdbc.Driver");
         conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","1234");
         String sql = "INSERT INTO student(uName, uRoll,uPass, fName, uDob, uMob, uEmail, uAdd) VALUES (?,?,aes_encrypt(?,'keyRandom420789'),?,?,?,?,?)";
         PreparedStatement ps = conn.prepareStatement(sql);
         ps.setString(1, sa.getName());
         ps.setString(2, sa.getRoll());
         ps.setString(3, sa.getPass());
         ps.setString(4, sa.getFname());
         ps.setString(5, sa.getDob());
         ps.setString(6, sa.getMob());
         ps.setString(7, sa.getEmail());
         ps.setString(8, sa.getAdd());
         int is = ps.executeUpdate(); 
         
         if(is==1)
             ret="SUCCESS";
         else
             ret="ERROR";
    
 }catch(ClassNotFoundException | SQLException e){ 
    e.printStackTrace();
    ret="ERROR";
}
finally{
  if (conn != null) {
            try {
               conn.close();
            } 
            catch (Exception e) {
                e.printStackTrace();
            }
         }
   }
      return ret;
   }
}
