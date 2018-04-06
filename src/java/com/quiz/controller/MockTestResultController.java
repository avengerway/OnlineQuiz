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
        
//                  String[] jsondat=null;
//                  String []jsonarray=request.getParameterValues("jsonfile");
//                  System.out.println(jsonarray);
//        for (String jsonarray1 : jsonarray) {
//            jsondat = jsonarray1.split(",");  
//                
//        }
               HttpSession session=request.getSession();
          ArrayList<Subject> sube=(ArrayList<Subject>)session.getAttribute("sublist");
          String arr[]=new String[sube.size()];
          String str="";
          for(int j=0;j<arr.length;j++)
          {
              str="jsonfile"+j;
              String json=request.getParameter(str);
              arr[j]=json;
          }
       String sub;
      Quizbo bo=new Quizbo();
       int right1[]=new int[2];
       int answers[][]=new int[arr.length][2];
       for(int i=0;i<sube.size();i++)
       {
           sub=sube.get(i).getSub();
          right1=bo.getMockAnswer(arr[i],sub);
          for(int j=0;j<right1.length;j++)
          {
              answers[i][j]=right1[j];
          }
          right1=null;
          
       }
 
  RequestDispatcher rd=request.getRequestDispatcher("WEB-INF/jsp/member/showMockTestResult.jsp");
  request.setAttribute("right",answers);
rd.forward(request, response);
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

       

           
      