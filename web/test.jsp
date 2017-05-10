<%-- 
    Document   : test
    Created on : Apr 9, 2017, 4:33:59 PM
    Author     : Piyush
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.quiz.buisness.Quizbo"%>
<%@page import="com.quiz.database.Subjectdb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.quiz.model.Subject"%>
<!DOCTYPE html>
<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Online Quiz</title>
      <script src="jquery-1.11.3.js"></script>
        
<style> 


.article {
    text-align: left;
}

header {background: black;color:white;}
footer {background: #aaa;color:white;}
.nav {background:#eee;}

.nav ul {
    list-style-type: none;
    padding: 0;
}
.nav ul li {
   display:Inline-block; /*vertical to horizontal list */
	margin-right:+20px;/*by default li right margin gives some space even if it is zero*/
	font-size:1.5em
}
.nav ul li button:focus{
    border: 2px solid red;
}

.nav ul li button:active{
    border: 2px solid green;
}
</style>
</head>
<body onload="startTimer()">
    <%
            ArrayList<Subject> sube=(ArrayList<Subject>)session.getAttribute("sublist");
            String sub=sube.get(0).getSub();
           
        %>
         <script type="text/javascript">
             var timer=3600;
    var min=0;
    var sec=0;
    
    window.onbeforeunload = function() { if(question_no!=max_questions){return "Warning: Your work will be lost!";} };

    function startTimer(){
    	min=parseInt(timer/60);
    	sec=parseInt(timer%60);

    	if(timer<1){
            window.location="";
        }
    		
    	document.getElementById("time").innerHTML = "<b>Time Left: </b>"+min.toString()+":"+sec.toString();
    	timer--;
    	setTimeout(function(){ startTimer(); }, 1000);
    }
    
       $(document).ready(function(){
        $('#submit').hide();
        $('#next').hide();
        $('#back').hide();
         
         
            $('.nav button').click(function(){
           
       var id=$(this).attr('value');
       var question_no=1;
    var question_id=1;
    var max_questions=5;
 

           var answer;
           var s;
           $.get('getQuesions.jsp?question_no='+question_no+'&table='+id+'&req=first',function(data,status){
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
        	$.get('getQuesions.jsp?question_no='+question_no+'&question_id='+question_id+'&table='+id+'&answer='+answer,function(data,status){
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
                   
            	   $.get('getQuesions.jsp?question_no='+question_no+'&question_id='+question_id+'&table='+id+'&answer='+answer+'&req=last');
            	   
               }
        });
        
        
        $('#back').click(function(){
            question_no--;
            answer=$('input[name=answer]:checked').val();
            
            $.get('getQuesions.jsp?question_no='+question_no+'&question_id='+question_id+'&table='+id+'&answer='+answer,function(data,status){
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
       });
     
    
         </script>
<div class="flex-container">
<header>
  <h1><%=(String)session.getAttribute("field")%></h1>
</header>

<nav class="nav">
<ul>
    <li><button id="b1" value="<%=sube.get(0).getSub()%>"><%=sube.get(0).getSub()%></button></li>
 <li><button id="b2" value="<%=sube.get(1).getSub()%>"><%=sube.get(1).getSub()%></button></li>
  <li><button id="b3" value="<%=sube.get(2).getSub()%>"><%=sube.get(2).getSub()%></button></li>
 <li><button id="b4" value="<%=sube.get(3).getSub()%>"><%=sube.get(3).getSub()%></button></li>
  <li><button id="b5" value="<%=sube.get(4).getSub()%>"><%=sube.get(4).getSub()%></button></li>
 <li><button id="b6" value="<%=sube.get(5).getSub()%>"><%=sube.get(5).getSub()%></button></li>
</ul>
</nav>

<article class="article">
    <div id="section">
        
     <p align="right" id="time"></p>
    
        
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
</article>


</div>

</body>
</html>
