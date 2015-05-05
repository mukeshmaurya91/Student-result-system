
package service;

/**
 *
 * @author Mukesh Kumar Maurya
 */
import action.StudentAction;
import java.sql.*;



public class LoginAction {

   
   public String login(StudentAction sa) {
       
       String ret = "ERROR";
      Connection conn = null;
      try {
         Class.forName("com.mysql.jdbc.Driver");
         conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","1234");
         String sql = "SELECT * FROM student WHERE uRoll = ? AND uPass= aes_encrypt(?,'keyRandom420789')";
         PreparedStatement ps = conn.prepareStatement(sql);
         ps.setString(1, sa.getRoll());
         ps.setString(2, sa.getPass());
         ResultSet rs = ps.executeQuery();

         while (rs.next()) {
        
           sa.setName(rs.getString(1));
            sa.setFname(rs.getString(4));
            sa.setDob(rs.getString(5));
            sa.setMob(rs.getString(6));
            sa.setEmail(rs.getString(7));
            sa.setAdd(rs.getString(8));
          ret = "SUCCESS";
         }
      }
      catch (ClassNotFoundException | SQLException e) 
      {
         ret = "ERROR";
      } 
      finally {
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
