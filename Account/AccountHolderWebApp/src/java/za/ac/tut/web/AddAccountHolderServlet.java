/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
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
public class AddAccountHolderServlet extends HttpServlet {
    @EJB
    private AccountHolderFacadeLocal ahfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String fullname = request.getParameter("fullname");
        String street = request.getParameter("street");
        String city = request.getParameter("city");
        String code = request.getParameter("code");
        String cellNo = request.getParameter("cellNo");
        String email = request.getParameter("email");
        
        AccountHolder ah = createAccountHolder(id,fullname,street,city,code,cellNo,email);
        ahfl.create(ah);
        request.setAttribute("fullname", fullname);
        
        RequestDispatcher disp = request.getRequestDispatcher("add_accountholder_outcome.jsp");
        disp.forward(request, response);
    }

    private AccountHolder createAccountHolder(Long id, String fullname, String street, String city, String code, String cellNo, String email) {
        AccountHolder ah = new AccountHolder();
        ah.setId(id);
        ah.setFullName(fullname);
        ah.setStreet(street);
        ah.setCity(city);
        ah.setCode(code);
        ah.setCellNo(cellNo);
        ah.setEmailAddress(email);
        ah.setCreationDate(new Date());
        return ah;
    }
}
