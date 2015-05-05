<%-- 
    Document   : index
    Created on : 11 Nov, 2014, 3:14:42 PM
    Author     : Mukesh Kumar Maurya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="styles/style.css" rel="stylesheet" type="text/css" />
         <link href="styles/style1.css" rel="stylesheet" type="text/css" />
         <style type="text/css">

</style>
        <title>Welcome</title>
    </head>
    <body>
        <s:div id="header">
            <!img src="/image/mk.jpg" alt="image not loaded" height="200px" width="400px">
            <h1 style="float: right;">Student Web App</h1>
        </s:div>
        
        <s:div id="menu"> 
            
               <a href="<s:url action="MainPage"/>">Logout</a>
               <a href="<s:url action="AddDetailPage"/>">Add Details</a>
               <a href="<s:url action="AboutMePage"/>">About Me</a>
               <a href="<s:url action="MainPage"/>">Home</a></h3>
           
        </s:div>
            
         <s:div id="main"> 
             <h3 align="center">Welcome <span style="color:#003399;"><s:property value="Name"/></h3>
 <table class="tg">
      
      <tr>
          <th class="tg-031e">Student Details</th>
      </tr>
  <tr>
    <td class="tg-031e">Name</td>
    <td class="tg-031e"><s:property value="Name"/></td>
  </tr>
  <tr>
    <td class="tg-vn4c">Roll no.</td>
    <td class="tg-vn4c"><s:property value="Roll"/></td>
  </tr>
  <tr>
    <td class="tg-031e">D.O.B.</td>
    <td class="tg-031e"><s:property value="Dob"/></td>
  </tr>
  <tr>
    <td class="tg-vn4c">Mobile No.</td>
    <td class="tg-vn4c"><s:property value="Mob"/></td>
  </tr>
  <tr>
    <td class="tg-031e">E-mail</td>
    <td class="tg-031e"><s:property value="Email"/></td>
  </tr>
  <tr>
    <td class="tg-vn4c">Address</td>
    <td class="tg-vn4c"><s:property value="Add"/></td>
  </tr>
</table>
    <s:action name="studentresult" executeResult="true">
        <s:param name="roll" value="Roll"></s:param>
        >>
    </s:action>
        <br/>
       <br/>
    
         </s:div>
          
        
         <s:div id="footer">
            <h2>&#9830; Simple Footer !! &#9830;</h2>
        </s:div>
    </body>
</html>
