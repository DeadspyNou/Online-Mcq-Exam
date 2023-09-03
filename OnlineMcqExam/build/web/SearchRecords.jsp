<%-- 
    Document   : SearchRecords
    Created on : 19 Feb, 2021, 10:17:30 AM
    Author     : deadspy
--%>
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
        <form>
        <h1>Available Tests !</h1>
        
        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/onlinemcq?useSSL=false"
         user = "root"  password = "1234"/>
        <sql:query dataSource = "${snapshot}" var = "result">
            show tables;
         </sql:query>
            
            <table border = "1" width = "100%">
         <tr>
            <th>Table Name</th>
         </tr>
         <c:forEach var = "row" items = "${result.rows}">
             
            <tr>
               <td> <c:out value = "${row.Tables_in_onlinemcq}"/></td>
               <input type="hidden" name="StableName" value="${row.Tables_in_onlinemcq}">
               <td>
               [<a href="ExamBegin.jsp?TestId=${row.Tables_in_onlinemcq}">Take Exam</a>] 
               </td>
            </tr>
         </c:forEach>
      </table>
            </form>
    </body>
</html>
