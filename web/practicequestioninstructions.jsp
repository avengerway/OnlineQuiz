<%-- 
    Document   : practicequestioninstructions
    Created on : May 16, 2017, 4:34:43 PM
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
	  <li>Limit of Questions is not fixed</li>
	  <li>Time is Unlimited</li>
          <li>Questions based on the subject that you have chosen</li>
           <li>There is no negative marking</li>
	  <li>Click on <b>Start</b> button to start the test</li>
	  <li>After the test starts, don't press back or refresh button or don't close the browser window</li>
	</ul>  
    
    <br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button id="start" style="width:60px;height:30px" onclick="window.open('practicequestions.jsp','popUpWindow','height=' + screen.height + ',width=' + screen.width + ',resizable=no,scrollbars=no,toolbar=no,menubar=no,location=yes'); return false;">Start</button>    
    </div>
    </body>
</html>