<%-- 
    Document   : branch
    Created on : Mar 10, 2017, 10:59:10 PM
    Author     : Piyush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Online Quiz</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <link rel="stylesheet" href="css/main.css" />

    </head>
    <body>
        <!-- Wrapper -->
        <div id="wrapper">


            <h1 align="center"><%=(String)session.getAttribute("field")%></h1>


            <!-- Main -->
            <div id="main">
                <div class="inner">

                    <section class="tiles">

<div class="dropdown" style="margin-left:10px;margin-top:50px;font-size:20px;width:250px;font-family:monotype corsiva">
  <button class="dropbtn" style="width:200px" >CSE</button>
  <div class="dropdown-content">
    
    <a href="semestersubjectcontroller?given=cse3">SEMESTER 3</a>
    <a href="semestersubjectcontroller?given=cse4">SEMESTER 4</a>
    <a href="semestersubjectcontroller?given=cse5">SEMESTER 5</a>
    <a href="semestersubjectcontroller?given=cse6">SEMESTER 6</a>
    <a href="semestersubjectcontroller?given=cse7">SEMESTER 7</a>
    <a href="semestersubjectcontroller?given=cse8">SEMESTER 8</a>
    
  </div>
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="dropdown" style="margin-left:10px;margin-top:50px;font-size:20px;width:250px;font-family:monotype corsiva" >
  <button class="dropbtn" style="width:200px" >ELECTRONICS</button>
  <div class="dropdown-content">
    <a href="#">Link 1</a>
    <a href="#">Link 2</a>
    <a href="#">Link 3</a>
    <a href="#">Link 4</a>
  </div>
</div>
 <div class="dropdown" style="margin-left:10px;margin-top:50px;font-size:20px;width:250px;font-family:monotype corsiva">
  <button class="dropbtn" style="width:200px">CIVIL</button>
  <div class="dropdown-content">
    <a href="#">Link 1</a>
    <a href="#">Link 2</a>
    <a href="#">Link 3</a>
  </div>
</div>
<div class="dropdown" style="margin-left:10px;margin-top:50px;font-size:20px;width:250px;font-family:monotype corsiva">
  <button class="dropbtn" style="width:200px">Petroleum</button>
  <div class="dropdown-content">
    <a href="#">Link 1</a>
    <a href="#">Link 2</a>
    <a href="#">Link 3</a>
  </div>
</div>
                        <div class="dropdown" style="margin-left:10px;margin-top:50px;font-size:20px;width:250px;font-family:monotype corsiva">
  <button class="dropbtn"style="width:200px">ME</button>
  <div class="dropdown-content">
    <a href="#">Link 1</a>
    <a href="#">Link 2</a>
    <a href="#">Link 3</a>
  </div>
</div>
                        <div class="dropdown" style="margin-left:10px;margin-top:50px;font-size:20px;width:250px;font-family:monotype corsiva">
  <button class="dropbtn" style="width:200px">IT</button>
  <div class="dropdown-content">
    <a href="#">Link 1</a>
    <a href="#">Link 2</a>
    <a href="#">Link 3</a>
  </div>
</div>



                    </section>
                </div>
            </div>



        </div>



    </body>
</html>
