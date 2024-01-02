package org.example.bankservicejee.controller;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import service.BankWS;

@WebServlet("/BankServlet")
public class BankServlet extends HttpServlet {

    BankWS bankWS;

    public void init() {
        bankWS = new BankWS();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1> </h1>");
        out.println("</body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String amountStr = request.getParameter("amount");

        if (amountStr != null && !amountStr.isEmpty()) {
            try {
                double amount = Double.parseDouble(amountStr);

                if ("withdraw".equals(action)) {
                    System.out.println("withdraw" + amount);
                    if (bankWS.getBankServicePort().withdraw(amount)){
                        request.setAttribute("Message", "Successeful withdraw of "+amount+"DT");
                        request.getRequestDispatcher("/res.jsp").forward(request, response);
                    }
                    else{
                        request.setAttribute("Message", "Insufficient balance");
                        request.getRequestDispatcher("/res_error.jsp").forward(request, response);
                    }


                } else if ("deposit".equals(action)) {
                    System.out.println("deposit" + amount);
                    bankWS.getBankServicePort().deposit(amount);
                    request.setAttribute("Message", "Successeful deposit of "+amount+"DT");
                    request.getRequestDispatcher("/res.jsp").forward(request, response);
                }
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }

    }


    public void destroy() {
    }
}