<%-- 
    Document   : listtables
    Created on : 20 Feb, 2021, 1:37:29 AM
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
        <h1>${param.SELECTEDVAL}</h1>
        <sql:setDataSource var = "db" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/studentResult?useSSL=false"
         user = "root"  password = "1234"/>
        <sql:query dataSource = "${db}" var = "result">
            select * from ${param.SELECTEDVAL};
         </sql:query> 
            <table width="100%" cellpadding="5pt" border="1pt">
		<tr>
			<th>Roll Number</th>
                        <th>Marks</th>
		</tr>

		<c:forEach var="ResultLage" items="${result.rows}">
			<tr>
				<td>${ResultLage.Sroll}</td>
                                <td>${ResultLage.marks}
                                [<a href="Delete.jsp?SROLLNO=${ResultLage.Sroll}&TbName=${param.SELECTEDVAL}">Delete</a>]
                                </td>
			</tr>
		</c:forEach>
                           
	</table>
          
    </body>
</html>
