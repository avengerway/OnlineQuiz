<%-- 
    Document   : practicequestions
    Created on : Mar 21, 2017, 11:52:14 PM
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
        <script src="jquery-1.11.3.js"></script>
    </head>
    <body>
        <h1 align="center"><%=(String)session.getAttribute("field")%></h1>
       
     <% String sub=(String)request.getAttribute("subject");
  Quizbo bo=new Quizbo();
     int k=bo.getQuestionCount(sub);%>
      <h1><%=sub%></h1>
         <script type="text/javascript">
    var question_no=1;
    var question_id=1;
   var max=<%=k%>;
 var max_questions=max;
    
       $(document).ready(function(){
           var answer;
           var s;
           $.get('getQuesions.jsp?question_no='+question_no+'&table=<%=sub%>'+'&req=first',function(data,status){
            var obj=JSON.parse(data);
            question_id=question_no;
            $('#question').html('<b>Question '+question_no+': </b><br/>'+obj.ques_text);
            $('#a').html('<b>A:</b><input type="radio" name="answer" value="A">'+obj.A);
            $('#b').html('<b>B:</b><input type="radio" name="answer" value="B">'+obj.B);
            $('#c').html('<b>C:</b><input type="radio" name="answer" value="C">'+obj.C);
            $('#d').html('<b>D:</b><input type="radio" name="answer" value="D">'+obj.D);
        });
        
        if(question_no==1){
        	$('#back').hide();
        }
        else{
        	$('#back').show();
        }
        
        if(question_no==max_questions){
            $('#next').hide();
        }
        else{
            $('#next').show();
        }
        
        if(question_no!=max_questions){
            $('#submit').hide();
        }
        else{
            $('#submit').show();
        }
        
        $('#next').click(function(){
            answer=$('input[name=answer]:checked').val();
             s=$('input[name=answer]:checked').size();
        	
            if(s==0){
        		alert("Please select answer for this question");
        	}
        	else{
        	question_no++;
        	$.get('getQuesions.jsp?question_no='+question_no+'&question_id='+question_id+'&table=<%=sub%>'+'&answer='+answer,function(data,status){
                var obj=JSON.parse(data);
                question_id=question_no;
                $('#question').html('<b>Question '+question_no+': </b><br/>'+obj.ques_text);
                $('#a').html('<b>A:</b><input type="radio" name="answer" value="A">'+obj.A);
                $('#b').html('<b>B:</b><input type="radio" name="answer" value="B">'+obj.B);
                $('#c').html('<b>C:</b><input type="radio" name="answer" value="C">'+obj.C);
                $('#d').html('<b>D:</b><input type="radio" name="answer" value="D">'+obj.D);
            });
        	
        	if(question_no==1){
                $('#back').hide();
            }
            else{
                $('#back').show();
            }
            
            if(question_no==max_questions){
                $('#next').hide();
            }
            else{
                $('#next').show();
            }
            
            if(question_no!=max_questions){
                $('#submit').hide();
            }
            else{
                $('#submit').show();
            }
        	}
        });
        
        $('#submit').click(function(){
        	      answer=$('input[name=answer]:checked').val();
                     
                    s=$('input[name=answer]:checked').size();
               
               if(s==0){
                   alert("Please select answer for this question");
               }
               else{
                   
            	   $.get('getQuesions.jsp?question_no='+question_no+'&question_id='+question_id+'&table=<%=sub%>'+'&answer='+answer+'&req=last');
            	  document.location.href='practiceresultcontroller?questionid='+question_id; 
               }
        });
        
        
        $('#back').click(function(){
            question_no--;
            answer=$('input[name=answer]:checked').val();
            
            $.get('getQuesions.jsp?question_no='+question_no+'&question_id='+question_id+'&table=<%=sub%>'+'&answer='+answer,function(data,status){
                var obj=JSON.parse(data);
                question_id=question_no;
                $('#question').html('<b>Question '+question_no+': </b><br/>'+obj.ques_text);
                $('#a').html('<b>A:</b><input type="radio" name="answer" value="A" required>'+obj.A);
                $('#b').html('<b>B:</b><input type="radio" name="answer" value="B">'+obj.B);
                $('#c').html('<b>C:</b><input type="radio" name="answer" value="C">'+obj.C);
                $('#d').html('<b>D:</b><input type="radio" name="answer" value="D">'+obj.D);
            });
            
            if(question_no==1){
                $('#back').hide();
            }
            else{
                $('#back').show();
            }
            
            if(question_no==max_questions){
                $('#next').hide();
            }
            else{
                $('#next').show();
            }
            
            if(question_no!=max_questions){
                $('#submit').hide();
            }
            else{
                $('#submit').show();
            }
        });
        
     });

    </script> 
     <div id="section">
        
     
        <p id="question"></p><br/>
        <p id="a"></p>
        <p id="b"></p>
        <p id="c"></p>
        <p id="d"></p>
        <p id="answer"></p>
        
        <br/>
        <button id="back">Back</button>
        <button id="next">Next</button>&nbsp;
        <button id="submit">Submit</button>
            
    </div>
    </body>
</html>
