/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quiz.controller;

import com.quiz.buisness.Quizbo;
import com.quiz.model.Subject;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Piyush
 */
public class MockTestResultController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
      String json1=request.getParameter("jsonfile1");
       String json2=request.getParameter("jsonfile2");
        String json3=request.getParameter("jsonfile3");
         String json4=request.getParameter("jsonfile4");
          String json5=request.getParameter("jsonfile5");
           String json6=request.getParameter("jsonfile6");
         HttpSession session=request.getSession();
          ArrayList<Subject> sube=(ArrayList<Subject>)session.getAttribute("sublist");
          String sub1=sube.get(0).getSub();
             String sub2=sube.get(1).getSub();
                String sub3=sube.get(2).getSub();
                String sub4=sube.get(3).getSub();
             String sub5=sube.get(4).getSub();
                String sub6=sube.get(5).getSub();
        
      Quizbo bo=new Quizbo();
  int right1=bo.getMockAnswer(json1,sub1);
  int right2=bo.getMockAnswer(json2,sub2);
  int right3=bo.getMockAnswer(json3,sub3);
   int right4=bo.getMockAnswer(json4,sub4);
  int right5=bo.getMockAnswer(json5,sub5);
  int right6=bo.getMockAnswer(json6,sub6);
  RequestDispatcher rd=request.getRequestDispatcher("WEB-INF/jsp/showMockTestResult.jsp");
request.setAttribute("right1",right1);
request.setAttribute("right2",right2);
request.setAttribute("right3",right3);
request.setAttribute("right4",right4);
request.setAttribute("right5",right5);
request.setAttribute("right6",right6);
rd.forward(request, response);
  
  
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
