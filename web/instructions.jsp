<%-- 
    Document   : instructions
    Created on : Apr 9, 2017, 3:44:12 PM
    Author     : Piyush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Quiz</title>
    </head>
    <body>
         <div id="section">
    <h2>Instructions:</h2>
    <ul>
	  <li>Total Questions: 60</li>
	  <li>Time Alloted: 60 Minutes</li>
          <li>Questions based subjects present in the semester</li>
          <li> 10 Questions in each subject</li>
          <li>There is no negative marking</li>
	  <li>Click on <b>Start</b> button to start the test</li>
	  <li>After the test starts, don't press back or refresh button or don't close the browser window</li>
	</ul>  
    
    <br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button id="start" style="width:60px;height:30px" onClick="parent.location='test.jsp'">Start</button>    
    </div>
    </body>
</html>
