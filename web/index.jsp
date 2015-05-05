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
                 <h3>Welcome !!! </h3><br/>
                 <p>It's a simple web App which show Student Detail and Result.</p>
                 <p> This application build using <span style="font-style:italic;">struts 2.0</span> framework.</p>
  
             </s:div>
                 </s:div>
            
         <s:div id="footer">
            <h2>&#9830; Simple Footer !! &#9830;</h2>
        </s:div>
    </body>
</html>
