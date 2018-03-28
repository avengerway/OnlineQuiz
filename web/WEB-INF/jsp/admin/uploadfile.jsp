

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload File</title>
            <link rel="stylesheet" href="css/bootstrap.min.css">
 
       <script src="js/jquery-3.3.1.js"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

    </head>
    <body>
          <%@include file="../../jspf/adminheaderoptions.jspf" %>
         <script type="text/javascript">
          $(document).ready(function(){
              
               var branch=$("#branch").val();
              var sem=$("#sem").val();
    $.get('GetSubjectController?branch='+branch+'&sem='+sem,function(data,status){
            var obj=JSON.parse(data);
         
          
       var create;
	for(var i = 0; i < obj.length;i++)
	{
		create += '<option value="'+obj[i].subject+'">'+obj[i].subject+'</option>';
	}
	
           $('#subject').append(create);
                    
           
        });
          $("#sem").change(function(){
              $("#subject").empty();
              var branch=$("#branch").val();
              var sem=$("#sem").val();
       $.get('GetSubjectController?branch='+branch+'&sem='+sem,function(data,status){
            var obj=JSON.parse(data);
         
          
       var create;
	for(var i = 0; i < obj.length;i++)
	{
		create += '<option value="'+obj[i].subject+'">'+obj[i].subject+'</option>';
	}
	
           $('#subject').append(create);
                    
           
        });
            
          });
       
               $("#branch").change(function(){
              $("#subject").empty();
                         var branch=$("#branch").val();
              var sem=$("#sem").val();
                       $.get('GetSubjectController?branch='+branch+'&sem='+sem,function(data,status){
            var obj=JSON.parse(data);
         
          
       var create;
	for(var i = 0; i < obj.length;i++)
	{
		create += '<option value="'+obj[i].subject+'">'+obj[i].subject+'</option>';
	}
	
           $('#subject').append(create);
                    
           
        });
            
          });
       
      
          });
        </script>
        
        
       <form action="UploadFileController" method="POST" enctype="multipart/form-data">
            <table>
                <tbody>
                    <tr>
                        <td>Branch : </td>
                        <td>
                            <select id="branch" name="branch">
	                         <option value="cse">Computer Science & Engineering</option>
	                         <option value="me">Mechanical Engineering</option>
	                          <option value="ce">Civil Engineering</option>
	                    </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Semester : </td>
                        <td>
                            <select id="sem" name="sem">
         
                            <option value="3" selected id="choose">SEMESTER 3</option>
                            <option value="4" id="choose">SEMESTER 4 </option>
                             <option value="5" id="choose">SEMESTER 5</option>
                             <option value="6" id="choose">SEMESTER 6</option>
                              <option value="7" id="choose">SEMESTER 7</option>
                               <option value="8" id="choose">SEMESTER 8</option>
	                    </select>
                        </td>
                    </tr>
                    
                          <tr>
                                 <td><b>Subjects</b></td>
	                          <td id="test">
                                  <select id="subject" name="subject">
                
                                   </select>
	                           </td>
	
	                  </tr>
                    
                    <tr>
                        <td>Upload File : </td>
                        <td><input type="file" name="file"  /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Upload Data" />
                        </td>
                    </tr>
                </tbody>
            </table>

        </form>
        
        <%
            
            String msg=(String)request.getAttribute("Error");
            if(msg!=null)
            {%>
            <p><%=msg%></p>   
                
            <%}
            %>
      
    </body>
</html>
