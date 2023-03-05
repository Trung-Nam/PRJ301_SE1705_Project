/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers.admin;

import DAO.IAuthorDAO;
import DAO.IBookDAO;
import DAO.ICategoryDAO;
import DAO.IPublisherDAO;
import DAOImpl.AuthorDAOImpl;
import DAOImpl.BookDAOImpl;
import DAOImpl.CategoryDAOImpl;
import DAOImpl.PublisherDAOImpl;
import Model.Author;
import Model.Book;
import Model.Category;
import Model.Publisher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS G731G
 */
public class AdminListBookController extends HttpServlet {

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
            out.println("<title>Servlet AdminListBook</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminListBook at " + request.getContextPath() + "</h1>");
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
        List<Book> listBook = new ArrayList<>();
        IBookDAO dao = new BookDAOImpl();
        IAuthorDAO dao1 = new AuthorDAOImpl();
        ICategoryDAO dao2 = new CategoryDAOImpl();
        IPublisherDAO dao3 = new PublisherDAOImpl();
        try {

            listBook = dao.getAllBooks();
            List<Author> listAuthor = dao1.getAllAuthors();
            List<Category> listCategory = dao2.getAllCategorys();
            List<Publisher> listPublisher = dao3.getAllPublishers();
            request.setAttribute("listAuthor", listAuthor);
            request.setAttribute("listCategory", listCategory);
            request.setAttribute("listPublisher", listPublisher);
//			request.getRequestDispatcher("adminListBook.jsp").forward(request, response);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        request.setAttribute("listBook", listBook);
        request.getRequestDispatcher("AdminListBook.jsp").forward(request, response);
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
