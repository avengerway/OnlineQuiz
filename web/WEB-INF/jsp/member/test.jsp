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
      <script src="js/jquery-1.11.3.js"></script>
        
<style> 

div.tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
div.tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
}

/* Change background color of buttons on hover */
div.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
div.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
}

</style>
</head>
<body>
    <%
            ArrayList<Subject> sube=(ArrayList<Subject>)session.getAttribute("sublist");
            String s1=sube.get(0).getSub();
            String s2=sube.get(1).getSub();
            String s3=sube.get(2).getSub();
            String s4=sube.get(3).getSub();
            String s5=sube.get(4).getSub();
            String s6=sube.get(5).getSub();
            
             
              
        %>
         
     
    
       
      
       <script type="text/javascript">
        
           
       $(document).ready(function(){
      
         
             
            
           
           var id1= "<%=s1%>";
           var id2="<%=s2%>";
            var id3= "<%=s3%>";
           var id4="<%=s4%>";
            var id5= "<%=s5%>";
           var id6="<%=s6%>";
            var id11=id1.replace(/\s/g, '');
            var id22=id2.replace(/\s/g, '');
           
           var id33=id3.replace(/\s/g, '');
           
           var id44=id4.replace(/\s/g, '');
           
           var id55=id5.replace(/\s/g, '');
           
           var id66=id6.replace(/\s/g, '');
           
           
 var jsondata1,jsondata2,jsondata3,jsondata4,jsondata5,jsondata6;
              
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
                             
              $('#question1').append(create);  
	}
    });
              $.get('getMockTestController?table='+id2,function(data,status){
             jsondata2=JSON.parse(data);
            
       var create;
      
           for(var i = 0; i < jsondata2.length;i++)
	{
		create ='<p><b>Question '+(i+1)+': </b><br/>'+jsondata2[i].question+'</p>'
                        +'<br><p><b>A:</b><input type="radio" name="'+(id22+i)+'" value="A">'+jsondata2[i].ques_a+'</p>'
                +'<br><p><b>B:</b><input type="radio" name="'+(id22+i)+'" value="B">'+jsondata2[i].ques_b+'</p>'
                +'<br><p><b>C:</b><input type="radio" name="'+(id22+i)+'" value="C">'+jsondata2[i].ques_c+'</p>'
                +'<br><p><b>D:</b><input type="radio" name="'+(id22+i)+'" value="D">'+jsondata2[i].ques_d+'</p>'
                +'<hr>';
                             
              $('#question2').append(create);  
	}
    });
           $.get('getMockTestController?table='+id3,function(data,status){
           jsondata3=JSON.parse(data);
            
       var create;
      
           for(var i = 0; i < jsondata3.length;i++)
	{
		create ='<p><b>Question '+(i+1)+': </b><br/>'+jsondata3[i].question+'</p>'
                        +'<br><p><b>A:</b><input type="radio" name="'+(id33+i)+'" value="A">'+jsondata3[i].ques_a+'</p>'
                +'<br><p><b>B:</b><input type="radio" name="'+(id33+i)+'" value="B">'+jsondata3[i].ques_b+'</p>'
                +'<br><p><b>C:</b><input type="radio" name="'+(id33+i)+'" value="C">'+jsondata3[i].ques_c+'</p>'
                +'<br><p><b>D:</b><input type="radio" name="'+(id33+i)+'" value="D">'+jsondata3[i].ques_d+'</p>'
                +'<hr>';
                             
              $('#question3').append(create);  
	}
    });
           $.get('getMockTestController?table='+id4,function(data,status){
           jsondata4=JSON.parse(data);
            
       var create;
      
           for(var i = 0; i < jsondata4.length;i++)
	{
		create ='<p><b>Question '+(i+1)+': </b><br/>'+jsondata4[i].question+'</p>'
                        +'<br><p><b>A:</b><input type="radio" name="'+(id44+i)+'" value="A">'+jsondata4[i].ques_a+'</p>'
                +'<br><p><b>B:</b><input type="radio" name="'+(id44+i)+'" value="B">'+jsondata4[i].ques_b+'</p>'
                +'<br><p><b>C:</b><input type="radio" name="'+(id44+i)+'" value="C">'+jsondata4[i].ques_c+'</p>'
                +'<br><p><b>D:</b><input type="radio" name="'+(id44+i)+'" value="D">'+jsondata4[i].ques_d+'</p>'
                +'<hr>';
                             
              $('#question4').append(create);  
	}
    });
           $.get('getMockTestController?table='+id5,function(data,status){
            jsondata5=JSON.parse(data);
            
       var create;
      
           for(var i = 0; i < jsondata5.length;i++)
	{
		create ='<p><b>Question '+(i+1)+': </b><br/>'+jsondata5[i].question+'</p>'
                        +'<br><p><b>A:</b><input type="radio" name="'+(id55+i)+'" value="A">'+jsondata5[i].ques_a+'</p>'
                +'<br><p><b>B:</b><input type="radio" name="'+(id55+i)+'" value="B">'+jsondata5[i].ques_b+'</p>'
                +'<br><p><b>C:</b><input type="radio" name="'+(id55+i)+'" value="C">'+jsondata5[i].ques_c+'</p>'
                +'<br><p><b>D:</b><input type="radio" name="'+(id55+i)+'" value="D">'+jsondata5[i].ques_d+'</p>'
                +'<hr>';
                             
              $('#question5').append(create);  
	}
    });
           $.get('getMockTestController?table='+id6,function(data,status){
          jsondata6=JSON.parse(data);
            
       var create;
      
           for(var i = 0; i < jsondata6.length;i++)
	{
		create ='<p><b>Question '+(i+1)+': </b><br/>'+jsondata6[i].question+'</p>'
                        +'<br><p><b>A:</b><input type="radio" name="'+(id66+i)+'" value="A">'+jsondata6[i].ques_a+'</p>'
                +'<br><p><b>B:</b><input type="radio" name="'+(id66+i)+'" value="B">'+jsondata6[i].ques_b+'</p>'
                +'<br><p><b>C:</b><input type="radio" name="'+(id66+i)+'" value="C">'+jsondata6[i].ques_c+'</p>'
                +'<br><p><b>D:</b><input type="radio" name="'+(id66+i)+'" value="D">'+jsondata6[i].ques_d+'</p>'
                +'<hr>';
                             
              $('#question6').append(create);  
	}
    });
       document.getElementById("defaultOpen").click();
        $('#submit').click(function(){
      
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
     
     var b={};
        for(var j=0;j< jsondata2.length;j++)
     {
         answer=$('input[name='+(id22+j)+']:checked').val();
         ques_no=jsondata2[j].question_no;
        b[ques_no]=answer;
       
         
     }
     var json2=JSON.stringify(b);
     
     var c={};
        for(var j=0;j< jsondata3.length;j++)
     {
         answer=$('input[name='+(id33+j)+']:checked').val();
         ques_no=jsondata3[j].question_no;
        c[ques_no]=answer;
       
         
     }
     var json3=JSON.stringify(c);
     
     var d={};
        for(var j=0;j< jsondata4.length;j++)
     {
         answer=$('input[name='+(id44+j)+']:checked').val();
         ques_no=jsondata4[j].question_no;
        d[ques_no]=answer;
       
         
     }
     var json4=JSON.stringify(d);
     
     var e={};
        for(var j=0;j< jsondata5.length;j++)
     {
         answer=$('input[name='+(id55+j)+']:checked').val();
         ques_no=jsondata5[j].question_no;
        e[ques_no]=answer;
       
         
     }
     var json5=JSON.stringify(e);
     
      var f={};
        for(var j=0;j< jsondata6.length;j++)
     {
         answer=$('input[name='+(id66+j)+']:checked').val();
         ques_no=jsondata6[j].question_no;
        f[ques_no]=answer;
       
         
     }
     var json6=JSON.stringify(f);
     
     
         document.location.href='MockTestResultController?jsonfile1='+json1+'&jsonfile2='+json2+'&jsonfile3='+json3+'&jsonfile4='+json4+'&jsonfile5='+json5+'&jsonfile6='+json6; 
        });
        
        
   
        });
       
        function openSubject(evt, subName) {
    // Declare all variables
    var i, tabcontent, tablinks;

    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the button that opened the tab
    document.getElementById(subName).style.display = "block";
    evt.currentTarget.className += " active";
}
      
  
 </script>
    
       
<div class="tab">
  <button id="defaultOpen" class="tablinks" onclick="openSubject(event, '<%=sube.get(0).getSub()%>')"><%=sube.get(0).getSub()%></button>
  <button class="tablinks" onclick="openSubject(event, '<%=sube.get(1).getSub()%>')"><%=sube.get(1).getSub()%></button>
  <button class="tablinks" onclick="openSubject(event, '<%=sube.get(2).getSub()%>')"><%=sube.get(2).getSub()%></button>
   <button class="tablinks" onclick="openSubject(event, '<%=sube.get(3).getSub()%>')"><%=sube.get(3).getSub()%></button>
  <button class="tablinks" onclick="openSubject(event, '<%=sube.get(4).getSub()%>')"><%=sube.get(4).getSub()%></button>
  <button class="tablinks" onclick="openSubject(event, '<%=sube.get(5).getSub()%>')"><%=sube.get(5).getSub()%></button>
  <button id="submit" style="float:right;">SUBMIT </button>
</div>

<div id="<%=s1%>" class="tabcontent" >
     <p id="question1" ></p>
</div>

<div  id="<%=s2%>" class="tabcontent">
       <p id="question2"></p> 
</div>

<div id="<%=s3%>" class="tabcontent">
       <p id="question3"></p>
</div>
<div id="<%=s4%>" class="tabcontent" >
     <p id="question4"></p>
</div>

<div  id="<%=s5%>" class="tabcontent">
      <p id="question5"></p>
</div>

<div  id="<%=s6%>" class="tabcontent">
      <p id="question6"></p>
</div>
</body>
</html>
