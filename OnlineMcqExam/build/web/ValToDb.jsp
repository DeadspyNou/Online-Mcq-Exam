<!-- 
    Document   : ValToDb
    Created on : 17 Feb, 2021, 11:34:33 AM
    Author     : deadspy-->
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <title>JSP Page</title>
        <%@include file="index.html" %> 
    </head>
<body>
            <h1>${param.TestId}</h2>
            <% 

                String NMARK=request.getParameter("NMARK");
                System.out.println(NMARK);
                System.out.println();
                if( NMARK == null || NMARK.length() == 0){
            try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinemcq?useSSL=false","root","1234"); // database path
                    Statement st = cn.createStatement();
                    String Question=request.getParameter("Question");  
                    String correct=request.getParameter("correct");
                    String o2=request.getParameter("o2");  
                    String o3=request.getParameter("o3");
                    String o4=request.getParameter("o4");
                    String qMark=request.getParameter("qMark");
                    String Table_Name=request.getParameter("Table_Name");
                    ResultSet val=st.executeQuery("SELECT NMARK FROM '"+ Table_Name+"' ;");
                    while(val.next()){
                        NMARK = val.getString(1);
                    System.out.println(NMARK);
                    String AddQuerry="INSERT INTO "+Table_Name+" values(null,'"+Question+"','"+correct+"','"+o2+"','"+o3+"','"+o4+"','"+qMark+"','"+NMARK+"');";
                    st.execute(AddQuerry);
                    cn.close();
                    break;
                    }

            }
                catch(Exception nooo){
                    System.out.println("Error Connecting "+nooo);
                }}else{
                try {
                    //Class.forName("com.mysql.jdbc.Driver"); // drive class name
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection cn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinemcq?useSSL=false","root","1234"); // database path
                    Statement st2 = cn2.createStatement();
                    String Question=request.getParameter("Question");
                    String correct=request.getParameter("correct");
                    String o2=request.getParameter("o2");  
                    String o3=request.getParameter("o3");
                    String o4=request.getParameter("o4");
                    String qMark=request.getParameter("qMark");
                    String TableName=request.getParameter("Table_Name");
                    System.out.print(TableName);
                    String AddQuerry="INSERT INTO "+TableName+" values(null,'"+Question+"','"+Question+"','"+correct+"','"+o2+"','"+o3+"','"+o4+"','"+qMark+"','"+NMARK+"');";
                    st2.execute(AddQuerry);
                    cn2.close();
            }
                catch(Exception nooo){
                    System.out.println("Error Connecting "+nooo);
                }   }
            %>
            <c:redirect url = "/AddQuestions.jsp"/>
        </body>
</html>