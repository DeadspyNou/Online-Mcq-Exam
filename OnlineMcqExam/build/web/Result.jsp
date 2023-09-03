<%-- 
    Document   : Result
    Created on : 19 Feb, 2021, 12:21:53 PM
    Author     : deadspy
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@include file="index.html" %> 
    </head>
    <body>
       
        <% 
                
                
                try{
                    String SrollNO=request.getParameter("Sroll");
                String TestId=request.getParameter("TestId");
                String StID=request.getParameter("SRID");
                  System.out.println(SrollNO+TestId+StID);
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinemcq?useSSL=false","root","1234"); // database path
                Statement st = cn.createStatement();
                ResultSet noofrows=st.executeQuery("select * from "+TestId+";");
                
                
                int RCount=0;
                while (noofrows.next()) {
                    int KGF = noofrows.getInt(1);
                    RCount+=1;
                    pageContext.setAttribute("Row_C", RCount);
                    System.out.println(RCount);
                }
                
                int Marks=0;
                int i=1;
                ResultSet Result=st.executeQuery("Select AnsWer from "+TestId+";");
                while(Result.next()){

                String NORD=request.getParameter("option"+i);
                String Answers=Result.getString(1);
                System.out.println(Answers+"ANSWER");
                System.out.print(NORD +"NORD");
                if (Answers.equals(NORD)){
                Marks+=5;
                System.out.print(Marks +"Marks");
                }else{
                System.out.println("Inside else");
                } i+=1;
                    }
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentresult?useSSL=false","root","1234"); // database path
                Statement st2 = cn2.createStatement();
                st2.execute("INSERT INTO "+StID+" VALUES('"+SrollNO+"','"+Marks+"');");
                cn2.close();
                }catch(Exception QWE){
                    System.out.println(QWE.getMessage()+"ERROR");
                }
                out.println("<h1>Done</h1>");
        %>
        
    </body>
</html>
