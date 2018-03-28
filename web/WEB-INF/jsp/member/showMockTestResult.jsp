
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
            String s6=sube.get(5).getSub();
            int noq1=Subjectdb.count(s1);
             int noq2=Subjectdb.count(s2);
              int noq3=Subjectdb.count(s3);
               int noq4=Subjectdb.count(s4);
                int noq5=Subjectdb.count(s5);
                 int noq6=Subjectdb.count(s6);
            
    %>
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
             int right1[]=new int[2];
          int right2[]=new int[2];
            int right3[]=new int[2];
              int right4[]=new int[2];
                int right5[]=new int[2];
                  int right6[]=new int[2];
                    
        
            right1=(int[])request.getAttribute("right1");
            right2=(int[])request.getAttribute("right2");
               right3=(int[])request.getAttribute("right3");
                 right4=(int[])request.getAttribute("right4");
                   right5=(int[])request.getAttribute("right5");
                     right6=(int[])request.getAttribute("right6");

            int wrong1 = Math.abs(right1[1]-right1[0]);
             int wrong2 = Math.abs(right2[1]-right2[0]);
              int wrong3 = Math.abs(right3[1]-right3[0]);
               int wrong4 = Math.abs(right4[1]-right4[0]);
                int wrong5 = Math.abs(right5[1]-right5[0]);
                 int wrong6 = Math.abs(right6[1]-right6[0]);
          
            int na1=Math.abs(noq1-right1[1]);
              int na2=Math.abs(noq2-right2[1]);
                int na3=Math.abs(noq3-right3[1]);
                  int na4=Math.abs(noq4-right4[1]);
                    int na5=Math.abs(noq5-right5[1]);
                      int na6=Math.abs(noq6-right6[1]);
                     


        %>
        <table class="table table-striped">
            <tr>
                <th>SUBJECT</th>
                <th>Number of Questions</th>
                <th>Right Answers</th> 
                <th>Wrong Answers</th>
                <th>Not attempted</th>
                <th>Attempted</th>
            </tr>
            <tr>
                <td><%=s1%></td>
                <td><%=noq1%></td>
                <td><%=right1[0]%></td>
                <td><%=wrong1%></td>
                <td><%=na1%></td>
                <td><%=right1[1]%></td>
            </tr>
              <tr>
                <td><%=s2%></td>
                <td><%=noq2%></td>
                <td><%=right2[0]%></td>
                <td><%=wrong2%></td>
                <td><%=na2%></td>
                <td><%=right2[1]%></td>
            </tr>
             <tr>
                <td><%=s3%></td>
                <td><%=noq3%></td>
                <td><%=right3[0]%></td>
                <td><%=wrong3%></td>
                <td><%=na3%></td>
                <td><%=right3[1]%></td>
            </tr>
             <tr>
                <td><%=s4%></td>
                <td><%=noq4%></td>
                <td><%=right4[0]%></td>
                <td><%=wrong4%></td>
                <td><%=na4%></td>
                <td><%=right4[1]%></td>
            </tr>
             <tr>
                <td><%=s5%></td>
                <td><%=noq5%></td>
                <td><%=right5[0]%></td>
                <td><%=wrong5%></td>
                <td><%=na5%></td>
                <td><%=right5[1]%></td>
            </tr>
            <tr>
                <td><%=s6%></td>
                <td><%=noq6%></td>
                <td><%=right6[0]%></td>
                <td><%=wrong6%></td>
                <td><%=na6%></td>
                <td><%=right6[1]%></td>
            </tr>

        </table>


    </body>
</html>
