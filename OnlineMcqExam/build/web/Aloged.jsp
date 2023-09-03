<%-- 
    Document   : check_Admin
    Created on : 16 Feb, 2021, 5:48:10 PM
    Author     : deadspy
--%>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="cecAdminLog.jsp" %>
    </head>
    <body>
        
        <% 
         String user=request.getParameter("username");  
         String paswd=request.getParameter("password");
         if (user.equals("CCSP2021") && paswd.equals("cec")){
            String redirectURL = "Aloged.jsp";
            response.sendRedirect(redirectURL);
            }else{
            out.println("<br><div style='text-align:center;color:red;'>Invalid Credentials</div>");
         }
        %>
    </body>
</html>
