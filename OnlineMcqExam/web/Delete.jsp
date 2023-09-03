<%-- 
    Document   : Delete
    Created on : 20 Feb, 2021, 2:16:46 AM
    Author     : deadspy
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html><head>
    <%@include file="index.html" %> 
    </head>
    <body>
	
            
            <sql:setDataSource 
         var="db" 
         driver="com.mysql.jdbc.Driver"  
         url="jdbc:mysql://localhost:3306/studentresult?useSSL=FALSE"  
         user="root"  
         password="1234"/> 

		<sql:update dataSource="${db}"
			var="count">
                        delete from ${param.TbName} where Sroll = ?
	        <sql:param value="${param.SROLLNO}" />
		</sql:update>
                        
	<h1>RECORD DELETED SUCCESSFULLY</h1>
	 <form id="logout" action="ADMINALLREC.jsp">
            <input type="submit" value="Back" >
        </form>
</body>
</html>