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
import Model.Category;
import Model.Publisher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS G731G
 */
public class AdminAddBookController extends HttpServlet {

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
        IAuthorDAO dao = new AuthorDAOImpl();
        ICategoryDAO dao1 = new CategoryDAOImpl();
        IPublisherDAO dao2 = new PublisherDAOImpl();
        try {
            List<Author> listAuthor = dao.getAllAuthors();
            List<Category> listCategory = dao1.getAllCategorys();
            List<Publisher> listPublisher = dao2.getAllPublishers();
            request.setAttribute("listAuthor", listAuthor);
            request.setAttribute("listCategory", listCategory);
            request.setAttribute("listPulisher", listPublisher);
            request.getRequestDispatcher("AdminAddBook.jsp").forward(request, response);
        } catch (Exception e) {
            // TODO: handle exception
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
        IBookDAO dao3 = new BookDAOImpl();
        IAuthorDAO authorDAO = new AuthorDAOImpl();
        IPublisherDAO publisherDAO = new PublisherDAOImpl();
        ICategoryDAO categoryDAO = new CategoryDAOImpl();

        int author = 0;
        int publisher = 0;
        int category = 0;
        if (request.getParameter("author") != null) {
            author = Integer.parseInt(request.getParameter("author"));
        } else {
            try {
                String authorAdd = request.getParameter("authorAdd");
                if (!authorDAO.getAllAuthorsName().contains(authorAdd)) {
                    authorDAO.addAuthor(authorAdd, "New author");
                }
                author = authorDAO.getByName(authorAdd).getAuthorId();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        if (request.getParameter("publisher") != null) {
            publisher = Integer.parseInt(request.getParameter("publisher"));
        } else {
            try {
                String publisherAdd = request.getParameter("publisherAdd");
                if (!publisherDAO.getAllPublishersName().contains(publisherAdd)) {
                    publisherDAO.addPublisher(publisherAdd, "");
                }
                publisher = publisherDAO.getByName(publisherAdd).getPublisherId();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        if (request.getParameter("category") != null) {
            category = Integer.parseInt(request.getParameter("category"));
        } else {
            try {
                String categoryAdd = request.getParameter("categoryAdd");
                if (!categoryDAO.getAllCategorysName().contains(categoryAdd)) {
                    categoryDAO.addCategory(categoryAdd);
                }
                category = categoryDAO.getByName(categoryAdd).getCategoryId();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        String title = request.getParameter("title");
        String brief = request.getParameter("brief");
        String image = "../assets/images/" + request.getParameter("image");
        String content = request.getParameter("content");

        try {
            dao3.addBook(title, author, brief, publisher, category, image, content, 0);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        response.sendRedirect("list-book");
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
