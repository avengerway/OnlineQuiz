

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
     <title>Signup page</title> 
        
  <link rel="stylesheet" href="css/login.css">       
 <link rel="stylesheet" href="css/bootstrap.min.css">
 
<script src="js/jquery-3.3.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
           
 </head>
<body>
    <script type="text/javascript">
         $(document).ready(function(){
    
           $('#userid').focusout(function(){
                 var id=$('#userid').val();
                    $.get('signupcontroller?myid='+id,function(data,status){
            
              $('#user').html(data);
           
           });  
           });
              
         });
         function validate()
{
    var flag=true;
   
    var password=document.getElementById("password").value;
    var repeatpassword=document.getElementById("repeatpassword").value;
  
  var n = password.localeCompare(repeatpassword);
    if(n!==0)
    {
        document.getElementById("repeat").innerHTML="Repeat password does not match password";
                
        flag=false;
    }
    return flag;
}

    </script>
    
  <%@include file="../jspf/header.jspf" %>

<div class="container">
   
   <div class="formbasic">
       
     <h3>SIGN UP FORM</h3>
 <form action="signupusercontroller" method="post">
     
        <div class="form-group">
            <label for="userid"><strong>USER ID</strong></label>
            <p id="user" style="color:green">  </p>
            <input type="text" placeholder="User ID" name="email" id="userid" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="password"><strong>PASSWORD</strong></label>
            <input type="password" placeholder="Enter Password" name="psw" id="password" class="form-control" required>
            
        </div>
          <div class="form-group">
            <label for="repeatpassword"><strong>PASSWORD</strong></label>
              <input type="password" placeholder="Repeat Password" name="psw-repeat" id="repeatpassword" class="form-control" required>
        </div>
    <button class="btn btn-lg btn-primary" type="submit" onclick="return validate()">Signup</button>
    <button class="btn btn-lg btn-danger" type="reset">Reset</button>
     
</form>
       
</div>
</div>
  <h4 id="repeat"></h4>

</body>
</html>
