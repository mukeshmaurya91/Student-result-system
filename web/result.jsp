<%-- 
    Document   : result
    Created on : 11 Nov, 2014, 3:16:20 PM
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
        <title>Result</title>
    </head>
    <body>
             

        <table class="tg">
  <tr>
    <th class="tg-s6z2" colspan="6">Result</th>
  </tr>
  <tr>
    <td class="tg-031e">Subject</td>
    <td class="tg-vn4c">Max Mark</td>
    <td class="tg-031e">Mark</td>
  </tr>
  <tr>
    <td class="tg-031e">Subject 1</td>
    <td class="tg-vn4c">100</td>
    <td class="tg-0ord"><s:property value="sub1"/></td>
    
  </tr>
  <tr>
    <td class="tg-031e">Subject 2</td>
    <td class="tg-vn4c">100</td>
    <td class="tg-0ord"><s:property value="sub2"/></td>
  </tr>
  <tr>
    <td class="tg-031e">Subject 3</td>
    <td class="tg-vn4c">100</td>
    <td class="tg-0ord"><s:property value="sub3"/></td>
  </tr>
  <tr>
    <td class="tg-031e">Subject 4</td>
    <td class="tg-vn4c">100</td>
    <td class="tg-0ord"><s:property value="sub4"/></td>
    
  </tr>
  <tr>
    <td class="tg-031e">Subject 5</td>
    <td class="tg-vn4c">100</td>
    <td class="tg-0ord"><s:property value="sub5"/></td>
  </tr>
  <tr>
    <td class="tg-031e">Subject 6</td>
    <td class="tg-vn4c">100</td>
    <td class="tg-0ord"><s:property value="sub6"/></td>
  </tr>
  <tr><th>
      Total</th>
  <th>
      600</th>
  <th>
     <s:property value="total"/> </th></tr>
  <tr><td>Percentage :</td><td><s:property value="per"/>%</td></tr>
  <tr><td>Grade :</td><td><s:property value="grade"/></td></tr>
</table>
 
    </body>
</html>
