<%-- 
    Document   : studyquestions
    Created on : Mar 21, 2017, 12:17:19 AM
    Author     : Piyush
--%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body style="background: ">
        <% JSONArray arr=(JSONArray)request.getAttribute("table");%>
        <h1 align="center" style="text-color:blue">
             <%=(String)session.getAttribute("field")%>
        </h1>
      
            
             <% for(int i=0;i<arr.length();i++)
             {
               JSONObject obj=arr.getJSONObject(i);
            %>
            <h2 ><%=i+1%>).  <%=obj.get("question")%></h2>
            <h2 style="color: green">Answer :-  <%=obj.get("answer")%></h2>
            <hr>
            
           <%    
             }
             %>
    </body>
</html>
