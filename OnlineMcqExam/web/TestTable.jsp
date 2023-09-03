<%-- 
    Document   : TestTable
    Created on : 17 Feb, 2021, 12:20:19 AM
    Author     : deadspy
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="java.util.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="index.html" %> 

    </head>
    <body>
        <div style="text-align: right">
          <form id="TableInfo" action="ADMINALLREC.jsp">
            <input type="submit" value="View All Test" >
        </form></div>
        <form id="Student2" action="Aloged.jsp">
            <input type="submit" value="Back" >
        </form>
        <h1 style="color: orange" >Make A Quiz</h1>
        Create A Test File
        <div style="text-align: center">
            <form action="AddQuestions.jsp">
                <p>
                    <input type="text" id="sub" name="sub" placeholder="Enter The Subject" >
                </p>
                <p>
                    <input type="text" id="Std" name="Std" placeholder="Enter The Std" >
                </p>
                <p>
                    <input type="text" id="Tno" name="Tnm" placeholder="Test Name" >
                </p>
                <p>
                    <input type="text" id="NMark" name="NMARK" placeholder="Negative mrk (eg, (0 or -1) per incorrect ans)" >
                </p>
                <p>
                    <input type="submit" value="Next" id="lessgoo" >
                </p>
                
                    
            </form>
        </div>

        </body>
        </html>
