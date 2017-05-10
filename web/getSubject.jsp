<%-- 
    Document   : getSubject
    Created on : Mar 31, 2017, 1:50:28 AM
    Author     : Piyush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.quiz.database.Subjectdb"%>
<%@page import="com.quiz.model.Subject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.json.JSONArray"%>
<%
    Subjectdb sdb=new Subjectdb();
   String branc=request.getParameter("branch");
   int se=Integer.parseInt(request.getParameter("sem"));
   JSONArray al=Subjectdb.getSubjects(branc,se);
   out.print(al);
   
    
    %>