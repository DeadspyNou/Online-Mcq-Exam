<%-- 
    Document   : ExamBegin
    Created on : 19 Feb, 2021, 11:10:24 AM
    Author     : deadspy
--%>
<%@page import="java.sql.*"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="index.html" %> 
    </head>
    <body>
        
        <div style="text-align: center"> 
        <form action="Result.jsp">
            <p>
            <input type="text" id="RollStu" name="Sroll" placeholder="Enter Your Roll No"  >
            </p>
            <input type="hidden"  name="Tablenm" value="${param.TestId}">
              <% 
                   String Stable=request.getParameter("TestId");
                   
                   String split[] = Stable.split("_", 0);
                   String sub,Std,tnm ,STableName;
                   sub=split[0];
                   Std=split[1];
                   tnm=split[2];
                   STableName=tnm+"_"+Std+"_"+sub;
                   System.out.println(STableName);
                    out.println("<input type=hidden name=Tablenm value="+STableName+">");
                    pageContext.setAttribute("Tablenm", STableName);
                    pageContext.setAttribute("TESTID", Stable);
               %>
 
          <sql:setDataSource var = "snapshotS" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/studentResult?useSSL=false"
         user = "root"  password = "1234"/>
        
            
        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/onlinemcq?useSSL=false"
         user = "root"  password = "1234"/>
         <sql:query dataSource = "${snapshot}" var = "result">
            Select * from ${param.TestId}
            
         </sql:query>
          
            <c:forEach var = "row" items = "${result.rows}">
              
                    
                    <input type="hidden"  name="Stable_name" value="Q${row.TID}">
                <%try{
                     String qnames=request.getParameter("Stable_name");
                     
                     
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn4 = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentresult?useSSL=false","root","1234"); // database path
                Statement st4 = cn4.createStatement();
                String myCtQuerys="CREATE TABLE IF NOT EXISTS "+ STableName+"(Sroll text,marks text );";
                st4.execute(myCtQuerys);
                String sql="ALTER TABLE "+STableName+ "ADD (" +qnames+" text)";
                
                st4.executeUpdate(sql);
                System.out.print("AFTER ALTER");
                }
                catch(Exception E){
                }
                
                %>
                          
           <table>  
               
            
            <tr><td>Q${row.TID}] </td>
               <td> <c:out value = "${row.Question}"/></td>
            
            </tr><br><tr><td>ANSWER</td></tr>
            <tr>
                 <td><input type="radio" id="option1" name="option${row.TID}" value="${row.AnsWer}"> <c:out value = "${row.AnsWer}"/></td>
            </tr>
            <tr>
                 <td><input type="radio" id="option2" name="option${row.TID}" value="${row.opt1}"> <c:out value = "${row.opt1}"/></td>
            </tr>
            <tr>
                 <td><input type="radio" id="option3" name="option${row.TID}" value="${row.opt2}"> <c:out value = "${row.opt2}"/></td>
            </tr>
            <tr>
                 <td><input type="radio" id="option4" name="option${row.TID}" value="${row.opt3}"> <c:out value = "${row.opt3}"/></td>
            </tr>
            <br>
            <br>
           </table>
            
         </c:forEach>
                    
            <input type="submit"  name="RESULT" value="Submit"> 
            <input type="hidden"  name="SRID" value="${Tablenm}">
            <input type="hidden"  name="TestId" value="${TESTID}">
            
            </form>
    </body>
</html>

