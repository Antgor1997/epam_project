package servlets;


import models.Administrator;
import models.MyModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin")
public class Admin extends HttpServlet {
    MyModel myModel=new MyModel();
    @Override
    protected void doGet (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Administrator administrator=myModel.getAdministrator();
        req.setAttribute("Administrator", administrator);
        RequestDispatcher requestDispatcher =req.getRequestDispatcher("/MainAdmin.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String login=req.getParameter("admin_login");
        String password=req.getParameter("admin_password");
        Administrator administrator=myModel.getAdministrator();
        String right_login=administrator.getLogin();
        String right_password=administrator.getPassword();
        if (right_login.equals(login)&&right_password.equals(password)){
            RequestDispatcher requestDispatcher=req.getRequestDispatcher("/authorized_admin.jsp");
            requestDispatcher.forward(req, resp);
        }
    }
}
