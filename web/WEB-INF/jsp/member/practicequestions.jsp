<%-- 
    Document   : practicequestions
    Created on : Aug 20, 2017, 10:42:54 PM
    Author     : Piyush
--%>
<%@page import="com.quiz.database.Subjectdb"%>
<%@page import="com.quiz.buisness.Quizbo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <script src="js/jquery-1.11.3.js"></script>
    </head>
    <body>
               <h1 align="center"><%=(String)session.getAttribute("table")%></h1>
       
     <% String sub=(String)session.getAttribute("table");
  Quizbo bo=new Quizbo();
     int k=bo.getQuestionCount(sub);%>
     <script type="text/javascript">
        
           
       $(document).ready(function(){
      
         
             
            
           
           var id1= "<%=sub%>";
          
            var id11=id1.replace(/\s/g, '');
           
           
           
 var jsondata1;
              
           $.get('getMockTestController?table='+id1,function(data,status){
            jsondata1=JSON.parse(data);
            
       var create;
      
           for(var i = 0; i < jsondata1.length;i++)
	{
		create ='<p><b>Question '+(i+1)+': </b><br/>'+jsondata1[i].question+'</p>'
                        +'<br><p><b>A:</b><input type="radio" name="'+(id11+i)+'" value="A">'+jsondata1[i].ques_a+'</p>'
                +'<br><p><b>B:</b><input type="radio" name="'+(id11+i)+'" value="B">'+jsondata1[i].ques_b+'</p>'
                +'<br><p><b>C:</b><input type="radio" name="'+(id11+i)+'" value="C">'+jsondata1[i].ques_c+'</p>'
                +'<br><p><b>D:</b><input type="radio" name="'+(id11+i)+'" value="D">'+jsondata1[i].ques_d+'</p>'
                +'<hr>';
                             
              $('#question').append(create);  
	}
    });
         var a={};
  
        var answer;
  
        var ques_no;
           
     for(var j=0;j< jsondata1.length;j++)
     {
         answer=$('input[name='+(id11+j)+']:checked').val();
         ques_no=jsondata1[j].question_no;
        a[ques_no]=answer;
       
      }
      
    var json1=JSON.stringify(a);
     document.location.href='MockTestResultController?jsonfile1='+json1;
});  
  
 </script>
    
         <div id="section">
        
     
        <p id="question"></p><br/>
      
  
            
    </div>
    </body>
</html>
