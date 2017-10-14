<%-- 
    Document   : showMockTestResult
    Created on : Jun 19, 2017, 1:36:03 AM
    Author     : Piyush
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.quiz.buisness.Quizbo"%>
<%@page import="com.quiz.database.Subjectdb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.quiz.model.Subject"%>
<!DOCTYPE html>
    <%     ArrayList<Subject> sube=(ArrayList<Subject>)session.getAttribute("sublist");
            String s1=sube.get(0).getSub();
            String s2=sube.get(1).getSub();
            String s3=sube.get(2).getSub();
            String s4=sube.get(3).getSub();
            String s5=sube.get(4).getSub();
            String s6=sube.get(5).getSub();%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
           <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
       
     
        <title>Result</title>
    </head>
    <body>
        <h1 align="center"><%=(String) session.getAttribute("field")%> </h1>
        <br><br>
        
        <%
           
                    
            int noq = 10;
            int right1=(int)request.getAttribute("right1");
            int right2=(int)request.getAttribute("right2");
              int right3=(int)request.getAttribute("right3");
                int right4=(int)request.getAttribute("right4");
                  int right5=(int)request.getAttribute("right5");
                    int right6=(int)request.getAttribute("right6");

            int wrong1 = noq - right1;
            
            int wrong2 = noq - right2;
            
            int wrong3 = noq - right3;
            
            int wrong4 = noq - right4;
            
            int wrong5 = noq - right5;
            
            int wrong6 = noq - right6;
            


        %>
        <table class="table table-striped">
            <tr>
                <th>SUBJECT</th>
                <th>Number of Questions</th>
                <th>Right Answers</th> 
                <th>Wrong Answers</th>
            </tr>
            <tr>
                <td><%=s1%></td>
                <td><%=noq%></td>
                <td><%=right1%></td>
                <td><%=wrong1%></td>
            </tr>
              <tr>
                <td><%=s2%></td>
                <td><%=noq%></td>
                <td><%=right2%></td>
                <td><%=wrong2%></td>
            </tr>
             <tr>
                <td><%=s3%></td>
                <td><%=noq%></td>
                <td><%=right3%></td>
                <td><%=wrong3%></td>
            </tr>
             <tr>
                <td><%=s4%></td>
                <td><%=noq%></td>
                <td><%=right4%></td>
                <td><%=wrong4%></td>
            </tr>
             <tr>
                <td><%=s5%></td>
                <td><%=noq%></td>
                <td><%=right5%></td>
                <td><%=wrong5%></td>
            </tr>
             <tr>
                <td><%=s6%></td>
                <td><%=noq%></td>
                <td><%=right6%></td>
                <td><%=wrong6%></td>
            </tr>

        </table>


    </body>
</html>
