<%-- 
    Document   : get_accountholders
    Created on : 28 Apr 2024, 12:18:17 PM
    Author     : sobet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get List Account Holders Page</title>
    </head>
    <body>
        <h1>Get list account holders </h1>
        <p>
            Please click on the button below to get the entire list.
        </p>
        <form action="GetAccountHoldersServlet.do" method="POST">
            <table>                               
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET ACCOUNT HOLDERS"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
