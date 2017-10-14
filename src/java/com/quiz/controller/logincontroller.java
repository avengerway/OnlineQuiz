package com.quiz.controller;

import com.quiz.buisness.Quizbo;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class logincontroller extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/jsp/loginuser.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        
      String id=request.getParameter("uname");
      
      String pass=request.getParameter("psw");
      if(id.equals("admin"))
      {
       String email="amolapiyush@gmail.com";
  
      Quizbo qb=new Quizbo();
        if(qb.checkDetails(email,pass))
        {
            RequestDispatcher rd=request.getRequestDispatcher("WEB-INF/jsp/admin/adminoptions.jsp");
            rd.forward(request, response);
            HttpSession session=request.getSession();
            session.setAttribute("email",email);
        }
        else 
        {
            RequestDispatcher rd=request.getRequestDispatcher("WEB-INF/jsp/index.jsp");
            request.setAttribute("error","Email Or Password Is Not Correct");
            rd.forward(request, response);
        }
         
      }
      else
      {
      Quizbo bo=new Quizbo();
      if(bo.logIn(id,pass))
      {
          RequestDispatcher rd=request.getRequestDispatcher("WEB-INF/jsp/home.jsp");
          rd.forward(request,response);
      }
      else
      {
         RequestDispatcher rd=request.getRequestDispatcher("WEB-INF/jsp/signuppage.jsp");
          rd.forward(request,response); 
      }
      }
    
    }
}
