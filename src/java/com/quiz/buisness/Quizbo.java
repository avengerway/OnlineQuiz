/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quiz.buisness;
import com.quiz.database.Admin;
import com.quiz.model.Subject;
import java.util.ArrayList;
    import org.json.JSONArray;
import com.quiz.database.Subjectdb;
import com.quiz.database.User;
import com.quiz.model.Question;


/**
 *
 * @author Piyush
 */
public class Quizbo  {
    public ArrayList<Subject> retrieveSubject(String s)
    {
     Subjectdb sub=new Subjectdb();
     ArrayList<Subject> list=sub.getSubject(s);
     return list;
     
    }
   
    public JSONArray getArray(String table)
    {
         String tablename = table.replaceAll("\\s", "");
         Subjectdb db=new Subjectdb();
         JSONArray arr=db.getQuestions(tablename);
         return arr;
    }
   
    public int getQuestionCount(String sub)
          
    {
        sub=sub.replaceAll("\\s","");
        int count=Subjectdb.count(sub);
        return count;
    }
    public boolean checkDetails(String email,String password)
    {
      
       boolean status=Admin.loginDetails(email, password);
       return status;
               
    }
    public boolean addQuestion(Question q)
    {
       
        Admin a=new Admin();
        boolean status=a.addQues(q);
        return status;
    }
    public boolean checkId(String id)
    {
        Long idd=Long.parseLong(id);
        User u=new User();
       boolean flag= u.checkUser(idd);
      return flag;
    }
    public boolean addUser(String id,String pass)
    {
        int userid=Integer.parseInt(id);
       User u=new User();
       boolean flag=u.signUp(userid,pass);
       return flag;
    }
    public boolean logIn(String id,String pass)
    {
        int userid=Integer.parseInt(id);
        User u=new User();
        boolean flag=u.signIn(userid,pass);
        return flag;
    }
    }
    




