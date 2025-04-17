package com.demo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.protocol.Resultset;

public class EmpDao {
	
	public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.cj.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/testEMp","root","root");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
} 
          public static int save(Employee e) {
        	  
        	    int status =0;
        	       
        	             Connection con =EmpDao.getConnection();
        	             
        	             try {
							PreparedStatement ps= con.prepareStatement("insert into emp1(name,password,email,sex,country) values(?,?,?,?,?)");
						
        	                ps.setString(1, e.getName());
        	                ps.setString(2, e.getPassword());
        	                ps.setString(3, e.getEmail());
        	                ps.setString(4, e.getSex());
        	             
        	                ps.setString(5, e.getCountry());
        	             
        	               
        	                status = ps.executeUpdate();
        	             
        	             
        	             } catch (SQLException e1) {
							// TODO Auto-generated catch block
							e1.printStackTrace();
						}
        	             
        	  
        	  
        	  return status;
          }



       public static List<Employee> getAllRecord() 
       {
    	   
    	                      List< Employee> list = new ArrayList<>();
    	                      
    	                      
    	                      try {
    	                    	  Connection con = getConnection();
        	                      
        	                      String q= "select * from emp1";
								PreparedStatement ps = con.prepareStatement(q);
								
							ResultSet rs= ps.executeQuery();
							
							    while(rs.next())
							    {
							    	   Employee e= new Employee();
							    	   
							    	     e.setId(rs.getInt("id"));
							    	     e.setName(rs.getString("name"));
							    	     e.setPassword(rs.getString("password"));
							    	     e.setEmail(rs.getString("email"));
							    	     e.setSex(rs.getString("sex"));
							    	     e.setCountry(rs.getString("country"));
							    	     
							    	     list.add(e);
							    }
							
							
								
								
						
    	                      
    	                      
    	                      
    	                      } catch (SQLException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
    	                      
    	   
    	   
    	   
    	   return list;
    	      
       }

       public static  Employee getRecordByID(int i){
    	   Employee e=null;
    	   try {
         	  Connection con = getConnection();
               
               String q= "select * from emp1 where id=?";
				PreparedStatement ps = con.prepareStatement(q);
				   ps.setInt(1, i);
				
			ResultSet rs= ps.executeQuery();
			
			 
	        while(rs.next())
            {
          	    e= new Employee();
          	      e.setId(rs.getInt("id"));
          	      e.setName(rs.getString("name"));
          	      e.setEmail(rs.getString("email"));
          	      e.setPassword(rs.getString("password"));
          	      e.setSex(rs.getString("sex"));
          	      e.setCountry(rs.getString("country"));
            }
           
                     } catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		return e;
    	  
       }
       
        public static int update(Employee e) 
        {
        	   int status=0;
               
               Connection con = getConnection();
               try {
					PreparedStatement ps= con.prepareStatement("update emp1 set name=?,password=?,email=?,sex=?,country=? where id=?");
			
					

      	               ps.setString(1, e.getName());
      	             ps.setString(2, e.getPassword());
   	                ps.setString(3, e.getEmail());
   	                ps.setString(4, e.getSex());
   	                ps.setString(5, e.getCountry());
   	                ps.setInt(6, e.getId());
      	             
      	                
      	                 status =ps.executeUpdate();
               
               
               } catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
               





return status;
        }

        
        public static void delete(Employee e) {
    		
             
             
               Connection con= getConnection();
                try {
					PreparedStatement ps= con.prepareStatement("delete from emp1 where id=?");
				
                         ps.setInt(1, e.getId());
                      ps.executeUpdate();
                
                } catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			
                
		
}
        
}
