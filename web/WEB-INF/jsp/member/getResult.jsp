
<%@page import="com.quiz.database.Subjectdb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Result</title>
    </head>
    <body>
        <h1 align="center"><%=(String) session.getAttribute("field")%> </h1>
        <br><br>
        <h1 align="center"><%=(String) session.getAttribute("table")%></h1>
        <%
            String table = (String) session.getAttribute("table");
            table=table.replaceAll("\\s","");
                int right1[]=new int[2];    
            int noq = Subjectdb.count(table);
            right1=(int[])request.getAttribute("right1");
          

           int wrong1 = Math.abs(right1[1]-right1[0]);
               int na1=Math.abs(noq-right1[1]);


        %>
       <table class="table table-striped">
            
                 <tr>
                <th>Number of Questions</th>
                <th>Right Answers</th> 
                <th>Wrong Answers</th>
                <th>Not attempted</th>
                <th>Attempted</th>
            </tr>
            
            <tr>
                <td><%=noq%></td>
                <td><%=right1[0]%></td>
                <td><%=wrong1%></td>
                <td><%=na1%></td>
                <td><%=right1[1]%></td>
            </tr>


        </table>


    </body>
</html>
