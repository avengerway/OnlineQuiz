
<%@page import="com.quiz.database.Subjectdb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body>
        <h1 align="center"><%=(String) session.getAttribute("field")%> </h1>
        <br><br>
        <h1 align="center"><%=(String) session.getAttribute("table")%></h1>
        <%
            String table = (String) session.getAttribute("table");
            table=table.replaceAll("\\s","");
                    
            int noq = Subjectdb.count(table);
            int right=(int)request.getAttribute("right");
          

            int wrong = noq - right;


        %>
        <table border="1">
            <tr>
                <th>Number of Questions</th>
                <th>Right Answers</th> 
                <th>Wrong Answers</th>
            </tr>
            <tr>
                <td><%=noq%></td>
                <td><%=right%></td>
                <td><%=wrong%></td>
            </tr>


        </table>


    </body>
</html>
