/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers.user;

import DAO.IUserDAO;
import DAOImpl.UserDAOImpl;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;

/**
 *
 * @author ASUS G731G
 */
public class UserChangePassword extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserChangePassword</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserChangePassword at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("login");
        }
        request.getRequestDispatcher("./user/changePassword.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        String password = request.getParameter("inputPasswordNew");
        String oldpassword = request.getParameter("inputPasswordOld");
        String confirmpassword = request.getParameter("inputPasswordNewVerify");
        int id = Integer.parseInt(request.getParameter("id"));
        IUserDAO iUserDAO = new UserDAOImpl();
        String warn = null;
        String success = null;
        try {
            User user = iUserDAO.getByUserId(id);
            if (user.getPassword().equals(oldpassword)) {
                if (password.equals(confirmpassword)) {
                    iUserDAO.changePassword(id, password);
                    request.getSession().setAttribute("user", user);
                    success = "Password has been changed !";
                    request.setAttribute("success", success);
                    response.sendRedirect("changepassword");
                } else {
                    warn = "New password and Confirm password not same !";
                    request.setAttribute("warn", warn);
                    request.getRequestDispatcher("./user/changePassword.jsp").forward(request, response);
                }
            } else {
                warn = "Password wrong !";
                request.setAttribute("warn", warn);
                request.getRequestDispatcher("./user/changePassword.jsp").forward(request, response);
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
