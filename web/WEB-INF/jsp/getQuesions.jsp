<%-- 
    Document   : getQuesions
    Created on : Mar 24, 2017, 4:13:52 PM
    Author     : Piyush
--%>
<%@page import="java.util.HashMap"%>
<%@page import="com.quiz.database.Subjectdb"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
int question_no=Integer.parseInt(request.getParameter("question_no"));
String req=request.getParameter("req");

if(req!=null){
	if(req.equals("first")){
            String table=request.getParameter("table");
table = table.replaceAll("\\s","");
	String result=Subjectdb.getQuestion(table,question_no);
        
	out.print(result);
	}
        else {
            
		   String question_id=request.getParameter("question_id");
		    String answer=request.getParameter("answer");
		    HashMap lhm=(HashMap)session.getAttribute("all_answers");
                 
		    if(!answer.equals("undefined")){
		          
		          
		          if(lhm==null){
		              lhm=new HashMap();
		              lhm.put(question_id, answer);
		              session.setAttribute("all_answers", lhm);
		          }
		          else{
		              lhm.put(question_id, answer);
		              session.setAttribute("all_answers", lhm);
		          }
		    }
	
	}
}
else{
	String question_id=request.getParameter("question_id");
	String answer=request.getParameter("answer");
        String table=request.getParameter("table");
table = table.replaceAll("\\s","");
    HashMap lhm=(HashMap)session.getAttribute("all_answers");
	
	if(!answer.equals("undefined")){
		  
		  
		  if(lhm==null){
			  lhm=new HashMap();
			  lhm.put(question_id, answer);
			  session.setAttribute("all_answers", lhm);
		  }
		  else{
			  lhm.put(question_id, answer);
              session.setAttribute("all_answers", lhm);
		  }
	}
	

	String result=Subjectdb.getQuestion(table,question_no);
	out.print(result);

}
%>
