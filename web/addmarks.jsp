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
        <title>Add Detail</title>
    </head>
    <body>
        <s:div id="header">
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
                 <form action="addmarks" method="post">
                     <s:div class="group">  
                         <input type="text" name="roll" id="roll" placeholder="Roll Number"/>
                     <span class="bar"></span></s:div>
                     <s:div class="group">
                     <input type="number" name="sub1" id="sub1" placeholder="Subject 1"/>
                     <span class="bar"></span></s:div>
                     <s:div class="group">  
                         <input type="number" name="sub2" id="sub2" placeholder="Subject 2"/>
                     <span class="bar"></span></s:div>
                     <s:div class="group">  
                         <input type="number" name="sub3" id="sub3" placeholder="Subject 3"/>
                     <span class="bar"></span></s:div>
                     <s:div class="group">  
                         <input type="number" name="sub4" id="sub4" placeholder="Subject 4"/>
                     <span class="bar"></span></s:div>
                     <s:div class="group">  
                         <input type="number" name="sub5" id="sub5" placeholder="Subject 5"/>
                     <span class="bar"></span></s:div>
                     <s:div class="group">  
                         <input type="numer" name="sub6" id="sub6" placeholder="Subject 6"/>
                     <span class="bar"></span></s:div>
          
                     <input type="submit" value="Submit">
                 </form>
        </s:div>
             </s:div>
       </s:div>
         <s:div id="footer">
            <h2>&#9830; Simple Footer !! &#9830;</h2>
        </s:div>
    </body>
</html>
