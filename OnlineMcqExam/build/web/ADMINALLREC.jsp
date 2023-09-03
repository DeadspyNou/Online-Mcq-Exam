<%-- 
    Document   : ADMINALLREC
    Created on : 20 Feb, 2021, 12:51:49 AM
    Author     : deadspy
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@include file="index.html" %> 
    </head>
    <body>
        <h1></h1>
            <sql:setDataSource var = "db" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/studentResult?useSSL=false"
         user = "root"  password = "1234"/>
         <sql:query dataSource = "${db}" var = "result">
            show tables;
         </sql:query> 
            
              <form action="listtables.jsp">
                  
                <c:forEach var = "row" items = "${result.rows}">
                   
                    <select name="SELECTEDVAL">
                        <option name="table_name" value="${row.Tables_in_studentresult}">${row.Tables_in_studentresult}</option>
                    </select>
         </c:forEach>
            <input type="submit" name="suballtest" value="Submit"  >
           
                        
            
        </form>
    </body>
</html>
