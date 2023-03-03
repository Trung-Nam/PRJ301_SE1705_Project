/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers.user;

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
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS G731G
 */
public class SearchFilterUserController extends HttpServlet {

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
            out.println("<title>Servlet SearchFilterUserController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SearchFilterUserController at " + request.getContextPath() + "</h1>");
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
            response.sendRedirect("Login");
        } else {
            IBookDAO iBookDAO = new BookDAOImpl();
            IAuthorDAO iAuthorDAO = new AuthorDAOImpl();
            IPublisherDAO iPublisherDAO = new PublisherDAOImpl();
            ICategoryDAO iCategoryDAO = new CategoryDAOImpl();

            try {
                List<Author> listAuthors = iAuthorDAO.getAllAuthors();
                List<Publisher> listPublishers = iPublisherDAO.getAllPublishers();
                List<Category> lisCategories = iCategoryDAO.getAllCategorys();

                List<Author> a = new ArrayList<>();
                List<Publisher> p = new ArrayList<>();
                List<Category> c = new ArrayList<>();

                String[] author = request.getParameterValues("author");
                String[] publisher = request.getParameterValues("publisher");
                String[] category = request.getParameterValues("category");
                String name = request.getParameter("search");

                int[] a1 = null;
                int[] p1 = null;
                int[] c1 = null;

                if (author != null) {
                    a1 = new int[author.length];
                    for (int i = 0; i < author.length; i++) {
                        a1[i] = Integer.parseInt(author[i]);
                        a.add(new Author(a1[i], "", ""));
                    }
                }

                if (publisher != null) {
                    p1 = new int[publisher.length];
                    for (int i = 0; i < publisher.length; i++) {
                        p1[i] = Integer.parseInt(publisher[i]);
                        p.add(new Publisher(p1[i], "", ""));
                    }
                }

                if (category != null) {
                    c1 = new int[category.length];
                    for (int i = 0; i < category.length; i++) {
                        c1[i] = Integer.parseInt(category[i]);
                        c.add(new Category(c1[i], ""));
                    }
                }

                int page;
                if (request.getParameter("page") == null) {
                    page = 1;
                } else {
                    page = Integer.parseInt(request.getParameter("page"));
                }

                List<Book> books = iBookDAO.getByFilter(a, p, c, name);
                int numberpage = 6;
                int size = books.size();
                int num = (size % 6 == 0 ? (size / 6) : ((size / 6) + 1));
                int start, end;
                start = (page - 1) * numberpage;
                end = Math.min(page * numberpage, size);

                List<Book> books2 = iBookDAO.listToPage(books, start, end);
                if (books.size() == 0) {
                    request.setAttribute("errorMessage", "Not Found!");
                    request.removeAttribute("search");
                }
                request.setAttribute("num", num);
                request.setAttribute("page", page);
                request.setAttribute("pageBook", books2);
                request.setAttribute("author", a);
                request.setAttribute("publisher", p);
                request.setAttribute("category", c);
                request.setAttribute("search", name);
                request.setAttribute("data", books);
                request.setAttribute("authorData", listAuthors);
                request.setAttribute("publisherData", listPublishers);
                request.setAttribute("categoryData", lisCategories);
                request.getRequestDispatcher("./user/searchBookUser.jsp").forward(request, response);

            } catch (SQLException e) {
                // TODO Auto-generated catch blocks
                e.printStackTrace();
            }
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
        protected void doPost
        (HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
//        processRequest(request, response);

        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }// </editor-fold>

    }
