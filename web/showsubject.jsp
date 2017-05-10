<%-- 
    Document   : showsubject
    Created on : Mar 15, 2017, 12:28:44 AM
    Author     : Piyush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.quiz.model.Subject"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subjects</title>
          <link rel="stylesheet" href="main_1.css" />
    </head>
    <body>
        <!-- Wrapper -->
        <%
            ArrayList<Subject> sub=(ArrayList<Subject>)request.getAttribute("sublist");
        %>
        <div id="wrapper">


            <h1 align="center"><%=(String)session.getAttribute("field")%></h1>

            <br><br><br><br><br><br><br>
            <!-- Main -->
            <div id="main">
                <div class="inner">

                    <section class="tiles">


                        <article class="style5">
                            <span class="image">
                                <img src="images/pic05.jpg">
                            </span>
                            <a href="subjectquestioncontroller?given=<%=sub.get(0).getSub()%>">
                                <h2><%=sub.get(0).getSub()%></h2>
                               

                            </a>
                        </article>
                        <article class="style6">
                            <span class="image">
  <img src="images/pic05.jpg">
                            </span>
                            <a href="subjectquestioncontroller?given=<%=sub.get(1).getSub()%>">
                                <h2><%=sub.get(1).getSub()%></h2>
                              
                            </a>
                        </article>
                        <article class="style2">
                            <span class="image">
  <img src="images/pic05.jpg">
                            </span>
                            <a href="subjectquestioncontroller?given=<%=sub.get(2).getSub()%>">
                                <h2><%=sub.get(2).getSub()%></h2>
                               
                            </a>
                        </article>
                        <article class="style2">
                            <span class="image">
  <img src="images/pic05.jpg">
                            </span>
                            <a href="subjectquestioncontroller?given=<%=sub.get(3).getSub()%>">
                                <h2><%=sub.get(3).getSub()%></h2>
                               
                            </a>
                        </article>
                           <article class="style2">
                            <span class="image">
  <img src="images/pic05.jpg">
                            </span>
                            <a href="subjectquestioncontroller?given=<%=sub.get(4).getSub()%>">
                                <h2><%=sub.get(4).getSub()%></h2>
                              
                            </a>
                        </article>
                           <article class="style2">
                            <span class="image">
  <img src="images/pic05.jpg">
                            </span>
                            <a href="subjectquestioncontroller?given=<%=sub.get(5).getSub()%>">
                                <h2><%=sub.get(5).getSub()%></h2>
                               
                            </a>
                        </article>


                    </section>
                </div>
            </div>



        </div>



    </body>
</html>
