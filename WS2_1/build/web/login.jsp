<%-- 
    Document   : login
    Created on : Jul 4, 2023, 10:21:35 AM
    Author     : nguyenphuocthienan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <form action="main" method="post">
            <input type="hidden" value="2" name="action"/>
            <!--
                        UserID:<input type="text" name="txtuserid"/><br>
            
                        Password:<input type="text" name="txtpassword"/><br>-->

            <table border="1">

                <tbody>
                    <tr>
                        <td>UserID:</td>
                        <td><input type="text" name="txtuserid" placeholder="Enter Your ID"/></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="text" name="txtpassword" placeholder="Enter Your Password"/></td>
                    </tr>
                </tbody>
            </table>

            <input type="submit" value="login"/>
        </form>
        
        <%
            String msg = (String) request.getAttribute("error");
            if (msg != null) {
                out.print("<h4>" + msg + "</h4>");
            }
        %>
    </body>
    

</html>
