package AllForms;


import java.sql.*;
import javax.swing.JOptionPane;


 

public class Databasefile {
 
  Connection con;
  Statement st;
  ResultSet rs;
  

  Databasefile(){
  
      try{
          Class.forName("com.mysql.cj.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pizza_ordering_system","root","");
          st = con.createStatement();
                  
      }catch(Exception e){
            System.out.println(e);
}
  }
  
         
           
  public ResultSet adminlogin(String username, String password){
          
      try{
      String query = "select * from admin_login where username='"+username+"' and password='"+password+"'";
      rs = st.executeQuery(query);
      
      }catch(Exception e){
          System.out.println(e);
      }
      return rs;
  }
  
  public int  create_acc(String fullname,String email,String gender,String address,String phone,String username,String password){
      int a=0;
      try{
      
     String query = "insert into create_acc(fullname,email,gender,address,phone,username,passwrod) values('"+fullname+"' , '"+email+"' , '"+gender+"' , '"+address+"' , '"+phone+"' ,  '"+username+"' ,  '"+password+"')";
      a = st.executeUpdate(query);
      
     
      
      }catch(Exception e){
          System.out.println(e);
      }
      
      
      return a;
  }
  
  
  public ResultSet userlogin(String username,String password){
      
      try{
          
          String query = "select username,passwrod from create_acc where username='"+username+"' and passwrod='"+password+"'";
          
       rs = st.executeQuery(query);
       
      }catch(Exception e){
          System.out.println(e);
      }
      
      
      return rs;
  }
  
  public ResultSet getbothdata(String uname){
      
      String query = "select fullname, phone from create_acc where username='"+uname+"'";
      try{
      rs = st.executeQuery(query);
      }catch(Exception e){
          
      }
      return rs;
  }
  
  
   public int  pizzaorder(String Name,String Address,int price,String Phone){
      int b=0;
      try{
      
     String query = "insert into pizza_order(Name,Address,Totalprice,Phone) values('"+Name+"' , '"+Address+"' , '"+price+"' , '"+Phone+"')";
      b = st.executeUpdate(query);
      
     
      
      
      }catch(Exception e){
          System.out.println(e);
      }
      
      
      return b;
  }
   
   public int countusers(){
       
       int countuser=0;
       try{
           String query = "select count(*) from create_acc";
          rs = st.executeQuery(query);
          rs.next();
       countuser  = rs.getInt(1);
           
       }catch(Exception e){
           System.out.println(e);
       }
       
       return countuser;
   }
 
   public int countadmin(){
       int countad=0;
       try{
           String query = "select count(*) from admin_login";
           rs = st.executeQuery(query);
           rs.next();
           countad = rs.getInt(1);
           
       }catch(Exception e){
           System.out.println(e);
       }
       
       return countad;
   }
   
   public int countorders(){
       int countor = 0;
       
       try{
           String query = "select count(*) from pizza_order";
           rs = st.executeQuery(query);
           rs.next();
           countor = rs.getInt(1);
           
       }catch(Exception e){
           System.out.println(e);
       }
       
       
       return countor;
   }
   
   
   public ResultSet showaccountinfo(){
       try{
           
           String query = "select * from create_acc";
           rs = st.executeQuery(query);
           
       }catch(Exception e){
           System.out.println(e);
       }
       return rs;
   }
   public ResultSet showadmininfo(){
       
       try{
           String query = "select * from admin_login";
           rs = st.executeQuery(query);
           
       }catch(Exception e){
           System.out.println(e);
       }
       
       return rs;
   }


      public ResultSet showorderinfo(){
       
       try{
           String query = "select * from pizza_order";
           rs = st.executeQuery(query);
           
       }catch(Exception e){
           System.out.println(e);
       }
       
       return rs;
   }
    
      public int totalsell(){
          
          int sell=0;
          String query = "select sum(Totalprice) from pizza_order";
          try{
              rs = st.executeQuery(query);
              if(rs.next()){
              sell = rs.getInt(1);
              }
          }catch(Exception e){
              System.out.println(e);
          }
          
          
          return sell;
      }
   public int deleteacc(int b){
       int a = 0;
       String query = "delete from create_acc where id='"+b+"'";
      try{
          a = st.executeUpdate(query);
          
      }catch(Exception e){
          System.out.println(e);
      }
          return a;
   }
  
    public int deleterecords(int b){
       int a = 0;
       String query = "delete from pizza_order where O_ID='"+b+"'";
      try{
          a = st.executeUpdate(query);
          
      }catch(Exception e){
          System.out.println(e);
      }
          return a;
   }
  
  
  public static void main(String args[]){
   
  }
  
  
    
    
    
}
