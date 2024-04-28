/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.ejb.bl.AccountHolderFacadeLocal;
import za.ac.tut.entities.AccountHolder;

/**
 *
 * @author sobet
 */
public class GetAccountHoldersServlet extends HttpServlet {
    @EJB
    private AccountHolderFacadeLocal ahfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<AccountHolder> holders = ahfl.findAll();
        request.setAttribute("holders", holders);
        
        RequestDispatcher disp = request.getRequestDispatcher("get_accountholder_outcome.jsp");
        disp.forward(request, response);
    }
}
