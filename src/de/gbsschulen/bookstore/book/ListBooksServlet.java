package de.gbsschulen.bookstore.book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

//@WebServlet(urlPatterns = "/listBuecher.do")
public class ListBooksServlet extends HttpServlet {

    private BookService bookService=new BookService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().setAttribute("books", bookService.readAllBooks());
        req.getRequestDispatcher("/WEB-INF/views/listBooks.jsp").forward(req, resp);
    }
}
