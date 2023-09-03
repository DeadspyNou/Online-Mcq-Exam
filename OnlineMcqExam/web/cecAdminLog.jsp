
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="text-align: center"> 
        <h1 style="background-color: orange">LOGIN TO ENTER EXAM MANAGER<br>@CCSP</br></h1> </div>
        <form id="Student" action="index.html">
            <input type="submit" value="Back" >
        </form>
        <div style="text-align:center">
            <form id="form_login" action="check_Admin.jsp">
                <br><br><br>
                <h2 style="color: orange">ADMIN</h2>
                <p>
                    <input type="text" id="user" name="username" placeholder="username" >
                </p>
                <p>
                    <input type="password" id="pass" name="password" placeholder="password" ><br>
                    <input type="checkbox" id="SHpass" onclick="ShowHide()">Show
                </p>
                <p>
                    <input type="submit" value="Login" >
                </p>
            </form>
        </div>
       
    </body>
    <script>
        function ShowHide() {
        var x = document.getElementById("pass");
        if (x.type == "password") {
             x.type = "text";
            }else {
             x.type = "password";
                 }
            }
    </script>
</html>
