<%-- 
    Document   : AddQuestions
    Created on : 17 Feb, 2021, 8:29:46 AM
    Author     : deadspy
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
           <%@include file="index.html" %> 
    </head>
    <body>  
        
        <form id="Student" action="TestTable.jsp">
            <input type="submit" value="Back" >
        </form>
            <h1 style="color: orange" >Add Questions</h1>
        <form action="ValToDb.jsp">
            <%System.out.println("Addq 1");
                Class.forName("com.mysql.jdbc.Driver");
                out.println("<label>Select Test</label>");
                out.println("<select name=\"TableName\">");
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinemcq?useSSL=false","root","1234"); // database path
                Statement st = cn.createStatement();
                ResultSet tablesnames=st.executeQuery("show tables;");
                while (tablesnames.next()) {
                    String NOU = tablesnames.getString(1);
                    out.println("<option value="+NOU+">"+NOU+"</option>");
                }
                String sub=request.getParameter("sub");
                String Std=request.getParameter("Std");
                String Tnm=request.getParameter("Tnm");
                String TableName,STableName;
                TableName=sub+"_"+Std+"_"+Tnm;
                STableName=Tnm+"_"+Std+"_"+sub;
                String NMARK=request.getParameter("NMARK");
                out.println("<type="+"hidden"+" name="+"NMARK"+" value="+NMARK+">");
                if(sub == null || sub.length() == 0){
                try{System.out.println("Addq 2");
                Class.forName("com.mysql.jdbc.Driver");
                
                out.println("</select>");
                out.println("<input type="+"hidden" +" name="+"Table_Name"+" value="+TableName+">");
                }catch(Exception e){
                        System.out.println(e);
                }
                }
                else {
                try{
                System.out.println("Addq 3");
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn4 = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinemcq?useSSL=false","root","1234"); // database path
                Statement st4 = cn4.createStatement();
                String myCtQuery="CREATE TABLE IF NOT EXISTS "+ TableName+"(TID int primary key AUTO_INCREMENT, Question text,AnsWer text,opt1 text,opt2 text, opt3 text,mrks text,Nmark text);";
                st4.execute(myCtQuery);
                cn4.close();
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentresult?useSSL=false","root","1234"); // database path
                Statement st2 = cn2.createStatement();
                
                String myCtQuerys="CREATE TABLE IF NOT EXISTS "+ STableName+"(Sroll text,marks text);";
                st2.execute(myCtQuerys);
                System.out.println("Stable created");
                out.println("<option value="+TableName+">"+TableName+"</option>");
                out.println("<input type="+"hidden" +" name="+"Table_Name"+" value="+TableName+">");
                
                }
            catch(Exception e){}
                 out.println("<input type=hidden name=Table_Name value="+TableName+">");
                 out.println("<input type=hidden name=STable_Name value="+STableName+">");
                out.println("<input type=hidden name=NMARK value="+NMARK+">");}
                   out.println("</select>");   
            %>
       
            
            <div style="text-align: center"> 
            <p>
            <input type="text" id="ques" name="Question" placeholder="Enter The Question" >
            </p>
            <p>
            <input type="text" id="corr" name="correct" placeholder="Correct Answer" >
            </p>
            <p>
            <input type="text" id="o2" name="o2" placeholder="Option 2" >
            </p>
            <p>
            <input type="text" id="o3" name="o3" placeholder="Option 3" >
            </p>
            <p>
            <input type="text" id="04" name="o4" placeholder="Option 4" >
            </p>
            <p>
            <input type="text" id="qMark" name="qMark" placeholder="How Much Marks ! " >
            </p>
            <p>
               <input type="submit" value="Add Record" >
            </p>
            
            </div>
            </form>
    </body>
</html>
