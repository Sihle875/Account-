<%-- 
    Document   : add_accountholder_outcome
    Created on : 28 Apr 2024, 12:46:07 PM
    Author     : sobet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Account Holder Outcome Page</title>
    </head>
    <body>
        <h1>Add account holder outcome</h1>
        <%
            String fullname = (String)request.getAttribute("fullname");
        %>
        <p>
            <b><%=fullname%></b> has been successfully persisted into the database.
            Please click <a href="menu.jsp">here</a> to get back to the menu page or
            <a href="index.html">here</a> to the main page.
        </p>
    </body>
</html>
