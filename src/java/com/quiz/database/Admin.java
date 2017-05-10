/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quiz.database;

/**
 *
 * @author Piyush
 */
import com.quiz.model.Question;
import java.sql.*;
public class Admin {
    public static boolean loginDetails(String email,String password)
    {
        boolean status=false;
    
        try
    {
        Connection con=DBConnection.getConnection();
        PreparedStatement ps=con.prepareStatement("select * from admin where user=? and password=password(?)");
        ps.setString(1, email);
        ps.setString(2, password);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
            status=true;
        }
        }
    
    catch(Exception ex)
    {
      ex.printStackTrace();
    }
        return status;
}
    public boolean addQues(Question q)
    {
        boolean status=false;
        String table=q.getSubject();
        table=table.replaceAll("\\s","");
        
        String query="insert into "+table+" (ques_text,ques_a,ques_b,ques_c,ques_d,answer) values(?,?,?,?,?,?)";
        try
        {
            Connection con=DBConnection.getConnection();
            PreparedStatement ps=con.prepareStatement(query);
          
            ps.setString(1, q.getQues());
            ps.setString(2,q.getA());
            ps.setString(3,q.getB());
            ps.setString(4,q.getC());
            ps.setString(5,q.getD());
            ps.setString(6,q.getAnswer());
            ps.executeUpdate();
            con.close();
           status=true;
        }catch(Exception e)
        {
           
            status=false;
            e.printStackTrace();
        }
        return status;
    }
}