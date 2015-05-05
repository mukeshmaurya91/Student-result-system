/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import action.ResultAction;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Mukesh Kumar Maurya
 */
public class AddMarks { 
    
    public String addSubMarks(ResultAction ra)
    {
    String ret="ERROR";
     Connection conn = null;
      try {
          
         Class.forName("com.mysql.jdbc.Driver");
         conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","1234");
         String sql = "INSERT INTO `mydb`.`result` (`uRoll`, sub1, sub2, sub3, sub4, sub5, sub6) VALUES (?,?,?,?,?,?,?)";
         PreparedStatement ps = conn.prepareStatement(sql);
         ps.setString(1, ra.getRoll());
         ps.setInt(2, ra.getSub1());
         ps.setInt(3, ra.getSub2());
         ps.setInt(4, ra.getSub3());
         ps.setInt(5, ra.getSub4());
         ps.setInt(6, ra.getSub5());
         ps.setInt(7, ra.getSub6());
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
