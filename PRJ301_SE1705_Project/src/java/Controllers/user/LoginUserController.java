/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers.user;

import DAO.IUserDAO;
import DAO.IUserRoleDAO;
import DAOImpl.UserDAOImpl;
import DAOImpl.UserRoleDAOImpl;
import Model.Question;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author ASUS G731G
 */
public class LoginUserController extends HttpServlet {

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
        try {
            IUserDAO dao = new UserDAOImpl();
            ArrayList<Question> questions = dao.getAllQuestions();
            request.setAttribute("questions", questions);
            request.getRequestDispatcher("LoginAndRegister.jsp").forward(request, response);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
//        request.getRequestDispatcher("LoginAndRegister.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        IUserDAO iUserDAO = new UserDAOImpl();
        IUserRoleDAO iUserRoleDAO = new UserRoleDAOImpl();
        try {
            User user = iUserDAO.getUserByUsernameAndPassword(username, password);
            if (user != null) {
                if (iUserRoleDAO.getByUserId(user.getUserId()).size() == 0) {
                    iUserRoleDAO.addUserRole(user.getUserId(), 2);
                }
                session.setAttribute("user", user);
                response.sendRedirect("Home");
            } else {
                request.setAttribute("inform", "danger");
                request.setAttribute("message", "Email hoặc mật khẩu không đúng.");
                request.getRequestDispatcher("LoginAndRegister.jsp").forward(request, response);
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
