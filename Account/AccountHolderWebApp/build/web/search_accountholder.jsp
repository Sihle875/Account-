<%-- 
    Document   : search_accountholder
    Created on : 28 Apr 2024, 12:14:44 PM
    Author     : sobet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Account Holder Page</title>
    </head>
    <body>
        <h1>Search account holder</h1>
        <p>
            Please enter the ID of the account holder to search for.
        </p>
        <form action="SearchAccountHolderServlet.do" method="POST">
            <table>
                <tr>
                    <td>ID: </td>
                    <td><input type="text" name="id" required=""></td>
                </tr>              
                <tr>
                    <td></td>
                    <td><input type="submit" value="SEARCH"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
