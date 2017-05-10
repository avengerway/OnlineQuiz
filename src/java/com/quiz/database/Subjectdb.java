/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.quiz.database;
import com.quiz.model.Subject;
import java.util.ArrayList;
        
import java.sql.*;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;


public class Subjectdb {
    public ArrayList<Subject> getSubject(String s)
    {
        ArrayList<Subject> list=new ArrayList<>();
        String s1=s.substring(0,3);
        String s2=s.substring(3,4);
        int i=Integer.parseInt(s2);
        try
        {
        Connection con=DBConnection.getConnection();
        PreparedStatement st=con.prepareStatement("select subject from semsub where branch=? and sem=?");
        st.setString(1, s1);
        st.setInt(2,i);
        ResultSet rs=st.executeQuery();
        while(rs.next())
        {
            Subject sub=new Subject();
           sub.setSub(rs.getString("subject"));
           list.add(sub);
            
            
        }
        con.close();
        }
        catch(Exception ex)
        {
            System.out.println("database error");
        }
        return list;
    }
    public static JSONArray getSubjects(String branch,int sem)
    {
     
        JSONArray array=new JSONArray();
		JSONObject obj;
        try
        {
        Connection con=DBConnection.getConnection();
        PreparedStatement st=con.prepareStatement("select subject from semsub where branch=? and sem=?");
        st.setString(1, branch);
        st.setInt(2,sem);
        ResultSet rs=st.executeQuery();
        while(rs.next())
        {
           obj=new JSONObject();
           obj.put("subject", rs.getString("subject"));
            array.put(obj);
            
        }
        con.close();
        }
        catch(Exception ex)
        {
            System.out.println("database error");
        } 
        return array;
    }
   public static JSONArray getQuestions(String set){
		  String query="select * from "+set+" ";
                
		JSONArray array=new JSONArray();
		JSONObject obj;
		
		try{
			Connection con=DBConnection.getConnection();
			PreparedStatement ps=con.prepareStatement(query);
			
			
			ResultSet rs=ps.executeQuery();			
			
			
			while(rs.next()){
				obj=new JSONObject();
				obj.put("question", rs.getString(2));
				
                                String s=rs.getString(7);
                                if(s.equals("A"))
                                {
                                    obj.put("answer",rs.getString(3));
                                }
                                else if(s.equals("B"))
                                {
                                    obj.put("answer",rs.getString(4));
                                
                                }
                                else if(s.equals("C"))
                                {
                                    obj.put("answer",rs.getString(5));
                                }
                                else
                                {
                                    obj.put("answer",rs.getString(6));
                                    
                                }
                                    
				
				
				
				
				array.put(obj);
			}
			
			rs.close();
			
			ps.close();
			con.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return array;
	}
	public static int count(String table)
        { int k=0;
        table=table.replaceAll("\\s","");
              String query="select count(*) from "+table+" ";
            try
            {
                Connection con=DBConnection.getConnection();
                PreparedStatement ps=con.prepareStatement(query);
               ResultSet rs=ps.executeQuery();
               while(rs.next())
               {
                    k=rs.getInt(1);
               }
               
            }
            catch(Exception ex)
            {
                ex.printStackTrace();
            }
            return k;
        }
	
 
    public static String getQuestion(String tablename,int qno)
    {
          String query="select * from "+tablename+" ";
       JSONObject obj=new JSONObject();
        try
        {
            Connection con=DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(query,
                                        ResultSet.TYPE_SCROLL_INSENSITIVE,
                                        ResultSet.CONCUR_UPDATABLE);
          
           ResultSet rs=ps.executeQuery();
           rs.absolute(qno);
          
               obj.put("ques_no", rs.getInt(1));
               obj.put("ques_text", rs.getString(2));
               obj.put("A", rs.getString(3));
               obj.put("B", rs.getString(4));
               obj.put("C", rs.getString(5));
               obj.put("D", rs.getString(6));
              
               
           con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        return obj.toString();
    }
    public static int getAnswers(String table,HashMap<Integer,String> lm)
    {
     table=table.replaceAll("\\s","");
       String a[]=new String[Subjectdb.count(table)];
        String query="select * from "+table+" ";
     
    
     int c=0;
     int i=0;
        try
        {
          Connection con=DBConnection.getConnection();
          PreparedStatement ps=con.prepareStatement(query);
          ResultSet rs=ps.executeQuery();
          while(rs.next())
          {
          String answer=rs.getString(7);
          a[i]=answer;
       
            i++;
          
        
          }
        }catch(Exception ex)
        {
           ex.printStackTrace();
        }
       i=0;
 
    for(Map.Entry m:lm.entrySet()){  
   if(m.getValue().equals(a[i]))
   {
     c++;  
   }
   i++;
  } 
    
    return c;
    }
}
