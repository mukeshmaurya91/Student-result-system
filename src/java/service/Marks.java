/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import action.ResultAction;
import action.StudentAction;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Mukesh Kumar Maurya
 */
public class Marks {
    
    public String getResult(ResultAction ra ,String roll )
    {  
      String ret = "ERROR";
      Connection conn = null;
      try {
         Class.forName("com.mysql.jdbc.Driver");
         conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","1234");
         String sql = "SELECT * FROM result WHERE uRoll = ?";
         PreparedStatement ps = conn.prepareStatement(sql);
         ps.setString(1, roll);
         ResultSet rs = ps.executeQuery();
         while (rs.next()) {
            ra.setSub1(Integer.parseInt(rs.getString(2)));
            ra.setSub2(Integer.parseInt(rs.getString(3)));
            ra.setSub3(Integer.parseInt(rs.getString(4)));
            ra.setSub4(Integer.parseInt(rs.getString(5)));
            ra.setSub5(Integer.parseInt(rs.getString(6)));
            ra.setSub6(Integer.parseInt(rs.getString(7)));
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
