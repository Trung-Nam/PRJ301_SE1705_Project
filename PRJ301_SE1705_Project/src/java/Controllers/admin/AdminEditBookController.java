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
import java.util.List;

/**
 *
 * @author ASUS G731G
 */
public class AdminEditBookController extends HttpServlet {

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
            out.println("<title>Servlet AdminEditBookController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminEditBookController at " + request.getContextPath() + "</h1>");
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
        IAuthorDAO author = new AuthorDAOImpl();
        IBookDAO dao = new BookDAOImpl();
        ICategoryDAO dao1 = new CategoryDAOImpl();
        IPublisherDAO dao3 = new PublisherDAOImpl();
        Book book = null;
        int id = Integer.parseInt(request.getParameter("id"));
        try {
            List<Author> authors = author.getAllAuthors();
            List<Category> category = dao1.getAllCategorys();
            List<Publisher> publisher = dao3.getAllPublishers();
            book = dao.getById(id);

            request.setAttribute("book", book);
            request.setAttribute("author", authors);
            request.setAttribute("category", category);
            request.setAttribute("publisher", publisher);

            request.getRequestDispatcher("AdminEditBook.jsp").forward(request, response);

        } catch (Exception e) {
            // TODO: handle exception
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
        int id = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        int author = Integer.parseInt(request.getParameter("author"));
        String brief = request.getParameter("brief");
        int publisher = Integer.parseInt(request.getParameter("publisher"));
        String image = "../assets/images/" + request.getParameter("image");
        int category = Integer.parseInt(request.getParameter("category"));
        IBookDAO dao = new BookDAOImpl();
        try {
            dao.editBook(id, title, author, brief, publisher, category, image);
            response.sendRedirect("list-book");
        } catch (Exception e) {
            // TODO: handle exception
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
