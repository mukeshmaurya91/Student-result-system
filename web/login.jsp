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
        <title>Welcome</title>
    </head>
    <body>
        <s:div id="header">
            <!img src="/image/mk.jpg" alt="image not loaded" height="200px" width="400px">
            <h1 style="float: right;">Student Web App</h1>
        </s:div>
        
        <s:div id="menu"> 
            
              <a href="<s:url action="LoginPage"/>">Login</a>
           
                <a href="<s:url action="AddDetailPage"/>">Add Details</a>
           
                <a href="<s:url action="AboutMePage"/>">About Me</a>
          
                <a href="<s:url action="MainPage"/>">Home</a>
           </s:div>
        
         <s:div id="main"> 
             <s:div id="box"> 
             <s:div class="container">
                 <form action="welcome" method="post">
                     <s:div class="group">
                     <input type="text" name="Roll" id="Roll" placeholder="Enter Roll Number"/>
                     <span class="bar"></span></s:div>
                     <s:div class="group">
                     <input type="password" name="Pass" id="Pass" placeholder="Enter Password"/>
                     <span class="bar"></span></s:div>
                     <input type="submit" value="Login">
                 </form>
        </s:div>
             </s:div>
        </s:div>
         <s:div id="footer">
            <h2>&#9830; Simple Footer !! &#9830;</h2>
        </s:div>
    </body>
</html>
