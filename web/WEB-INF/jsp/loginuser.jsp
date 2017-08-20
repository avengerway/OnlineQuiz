<%-- 
    Document   : loginuser
    Created on : Apr 13, 2017, 11:43:33 PM
    Author     : Piyush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<style>
form {
    border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
    width: 20%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 20%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 25%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
   
}
</style>
<body>



    <form action="logincontroller" method="post">
  <div class="imgcontainer">
    <img src="images/loginreal.jpg" alt="Avatar" class="avatar">
  </div>

  <div class="container">
      <label><b>UserID&nbsp;&nbsp;&nbsp;&nbsp;:</b></label>
    <input type="text" placeholder="Enter UserID" name="uname" required>
    <br>
    <label><b>Password:</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
    <br>
    <button type="submit">Login</button>
    <button type="reset">Reset</button>
  </div>

 
</form>

</body>
</html>