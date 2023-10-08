<%-- 
    Document   : createfood
    Created on : Jul 4, 2023, 12:08:00 PM
    Author     : nguyenphuocthienan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Please add a new product which you want</h1>
        <a href="main?action=3">Back</a>
        <form action="main?action=4" method="post">
            <table>                
                <tr>
                    <td>ID:</td>
                    <td><input type="text" name="txtid" placeholder="Enter Id"/></td>
                </tr>
                <tr>
                    <td>NAME:</td>
                    <td><input type="text" name="txtname" placeholder="Enter Name"/></td>
                </tr>
                <tr>
                    <td>DESCRIPTION:</td>
                    <td><input type="text" name="txtdes" placeholder="Enter Description"/></td>
                </tr>
                <tr>
                    <td>PRICE:</td>
                    <td><input type="number" name="txtprice" placeholder="Enter Price"/></td>
                </tr>
                <tr>
                    <td>COOKINGTIME:</td>
                    <td><input type="number" name="txttime" placeholder="Enter CookingTime"/></td>
                </tr>
                <tr>
                    <td>STATUS:</td>
                    <td><input type="number" name="txtstatus" placeholder="Enter Status"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="CREATE"/></td>
                </tr>
            </table>      
        </form>
        
        <%
            String msg = (String) request.getAttribute("loicreate");
            if (msg != null) {
                out.print("<h4>" + msg + "</h4>");
            }
        %>
        
    </body>
</html>
