package servlets;

import db.DBManager;
import db.Task;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/details")
public class DetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     Long id=Long.parseLong(request.getParameter("id"));
     Task task = (Task)  DBManager.getTaskById(id);
     request.setAttribute("tapsyrma",task);
     request.getRequestDispatcher("/details.jsp").forward(request,response);
    }
}
