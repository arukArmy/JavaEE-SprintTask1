package servlets;

import db.DBManager;
import db.Task;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


@WebServlet(value = "/add-task")
public class AddTaskServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/addtask.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name=request.getParameter("task_name");
        String description=request.getParameter("task_description");
        String deadlineDate=request.getParameter("task_deadlineDate");
        String Isdone=request.getParameter("task_isDone");

        Task task = new Task();
        task.setName(name);
        task.setDescription(description);
        task.setDeadlineDate(deadlineDate);
        task.setDone(Isdone);
        DBManager.addTask(task);
        response.sendRedirect("/home");



    }
}
