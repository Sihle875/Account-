<%-- 
    Document   : get_accountholder_outcome
    Created on : 28 Apr 2024, 1:00:58 PM
    Author     : sobet
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.AccountHolder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Account Holders Outcome Page</title>
    </head>
    <body>
        <h1>Get account holders outcome</h1>
        <%
            List<AccountHolder> list = (List<AccountHolder>)request.getAttribute("holders");
        %>
        <p>
            Below are the account holders retrieved from the database.
        </p>
        <table>
            <%
                for(int i=0; i < list.size(); i++) {
                    AccountHolder p = list.get(i);
                    Long id = p.getId();
                    String fullname = p.getFullName();
                    String street = p.getStreet();
                    String city = p.getCity();
                    String code = p.getCode();
                    String cellNo = p.getCellNo();
                    String email = p.getEmailAddress();
            %>
            <tr>
                <td><b>ID: </b></td>
                <td><%=id%></td>
            </tr>
                <tr>
                    <td><b>Full name: </b></td>
                    <td><%=fullname%></td>
                </tr>
                <tr>
                    <td><b>Street: </b></td>
                    <td><%=street%></td>
                </tr>
                <tr>
                    <td><b>City:</b></td>
                    <td><%=city%></td>
                </tr>
                <tr>
                    <td><b>Code:</b></td>
                    <td><%=code%></td>
                </tr>
                <tr>
                    <td><b>Cell number:</b></td>
                    <td><%=cellNo%></td>
                </tr>
                <tr>
                    <td><b>Email address</b></td>
                    <td><%=email%></td>
                </tr>
            <%
                }
            %>
        </table>
        <p>            
            Please click <a href="menu.jsp">here</a> to get back to the menu page or
            <a href="index.html">here</a> to the main page.
        </p>
    </body>
</html>
