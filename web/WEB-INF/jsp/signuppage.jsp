<%-- 
    Document   : signuppage
    Created on : Apr 14, 2017, 12:26:14 AM
    Author     : Piyush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
           <script src="js/jquery-1.11.3.js"></script>
<style>
/* Full-width input fields */
input[type=text], input[type=password] {
    width: 25%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 25%;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn,.signupbtn {
    float: left;
    width: 10%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: " ";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>
  </head>
<body>
    <script type="text/javascript">
         $(document).ready(function(){
           
         $('#check').click(function(){
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
<h2>Signup Form</h2>

<form action="signupusercontroller" style="border:1px solid #ccc" method="post">
  <div class="container">
      <label><b>UserID</b></label><p id="user" style="color:green">  </p><br>
      <input type="text" placeholder="User ID" name="email" id="userid" required>&nbsp;&nbsp;<button id="check" style="padding :10px 5px; width: 10%" >check validation</button><br><br>

      <label><b>Password</b></label><br>
      <input type="password" placeholder="Enter Password" name="psw" id="password" required><br>

      <label><b>Repeat Password</b></label><br>
      <input type="password" placeholder="Repeat Password" name="psw-repeat" id="repeatpassword" required><p style="color: red" id="repeat"></p><br>
  

    <div class="clearfix">
      <button type="reset" class="cancelbtn">Reset</button> 
      <button type="submit" class="signupbtn" onClick = "return validate();">Sign Up</button>
    </div>
  </div>
</form>

</body>
</html>
