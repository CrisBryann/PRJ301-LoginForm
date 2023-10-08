<%-- 
    Document   : admin
    Created on : Jul 4, 2023, 10:21:45 AM
    Author     : nguyenphuocthienan
--%>

<%@page import="basicObject.Users"%>
<%@page import="java.util.ArrayList"%>
<%@page import="basicObject.Foods"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <script>
            function warning() {
                var ans = window.confirm("Do you wanna Logout?");
                if (ans)
                    return true;
                return false;
            }
        </script>
    </head>
    <body>
        <%
        Users u = (Users)session.getAttribute("account");
        %>
        <h1>Welcome to <%= u.getFullName() %> comeback !!</h1>
        <form method="post" action="main?action=6">
            <input type="submit" onclick="return warning()" value="Logout"/>
        </form>
        <%

            ArrayList<Foods> flist = (ArrayList) request.getAttribute("flist");
            if (flist != null && flist.size() > 0) {
        %>


        <table border="1">

            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>CookingTime</th>
                    <th>Status</th>
                </tr>
            </thead>
            <%
                for (Foods f : flist) {
            %>
            <tbody>
                <tr>
                    <td><%= f.getId()%></td>
                    <td><%= f.getName()%></td>
                    <td><%= f.getDescription()%></td>
                    <td><%= f.getPrice()%></td>
                    <td><%= f.getCookingTime()%></td>
                    <td><%= f.isStatus()%></td>
                </tr>
            </tbody>
            <%
                }
            %>
        </table>


        <%
            }
        %>
        <a href="main?action=5">Create</a> <br>
    </body>
</html>
