/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers.user;

import DAO.IBookCaseDAO;
import DAO.IContainDAO;
import DAOImpl.BookCaseDAOImpl;
import DAOImpl.ContainDAOImpl;
import Model.BookCase;
import Model.Contain;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author ASUS G731G
 */
public class ViewBookCase extends HttpServlet {

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
            out.println("<title>Servlet ViewBookCase</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ViewBookCase at " + request.getContextPath() + "</h1>");
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
        IBookCaseDAO iBookCaseDAO = new BookCaseDAOImpl();
        IContainDAO iContainDAO = new ContainDAOImpl();
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        int numPerPage = 3;
        int page;//current page
        if (request.getParameter("page") == null) {
            page = 1;
        } else {
            page = Integer.parseInt(request.getParameter("page"));
        }

        try {
            BookCase bookCase = iBookCaseDAO.getBookCaseByUserId(user.getUserId());
            List<Contain> contain = iContainDAO.getContainByBookCase(bookCase.getBookCaseId());
            int size = contain.size();
            int num = (size % numPerPage == 0 ? (size / numPerPage) : ((size / numPerPage) + 1)); //number of pages
            
            int start, end;
            start = (page - 1) * numPerPage;
            end = Math.min(page * numPerPage, size);
            List<Contain> contains = iContainDAO.listPaging(contain, start, end);
            request.setAttribute("page", page);
            request.setAttribute("num", num);
            request.setAttribute("contains", contains);
            request.getRequestDispatcher("user/viewBookCase.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
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
