/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers.user;

import DAO.IUserDAO;
import DAOImpl.UserDAOImpl;
import Model.Question;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS G731G
 */
public class RegisterUserController extends HttpServlet {

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
        try {
            IUserDAO dao = new UserDAOImpl();
            ArrayList<Question> questions = dao.getAllQuestions();
            request.setAttribute("questions", questions);
            request.getRequestDispatcher("LoginAndRegister.jsp").forward(request, response);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
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
        String fullname = request.getParameter("fullname");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
//        String password2 = request.getParameter("Repassword");
        String email = request.getParameter("email");
        String question_id = request.getParameter("question");
        String answer = request.getParameter("answer");

        IUserDAO dao = new UserDAOImpl();
        //Tạo thêm 1 trường retype Password và check xử lí nó nếu trùng hoặc k 
        //Add thêm validate bằng java 
        //
        try {
//            if (password.equals(password2)) {
            dao.addUser(fullname, username, password, email,Integer.parseInt(question_id),answer);
            //Redirect to Login page !!
            User userCreated = dao.getUserByUsernameAndPassword(username, password);
            if (userCreated != null) {
                request.setAttribute("message", "Your account create successfully!");
                request.getRequestDispatcher("LoginAndRegister.jsp").forward(request, response);
            } else {
                request.setAttribute("message", "Your account create failed!");
                request.getRequestDispatcher("LoginAndRegister.jsp").forward(request, response);
            }
//            }
        } catch (Exception e) {
            // TODO: handle exception
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
