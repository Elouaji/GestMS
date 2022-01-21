package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.google.gson.Gson;
import beans.User;
import service.UserService;

@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserService us = new UserService();

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
		if (request.getParameter("user") != null) {
			User user = us.login(request.getParameter("user"), request.getParameter("pass"));
			if (user != null) {
				HttpSession session = request.getSession();
				session.setMaxInactiveInterval(10 * 60);
				session.setAttribute("id", user.getId());
				session.setAttribute("user", user.getUsername());
				session.setAttribute("pass", user.getPassword());
				session.setAttribute("nom", user.getNom());
		
				System.out.println("Login done");
				response.sendRedirect("index.jsp");
			} else
			{
				response.sendRedirect("Login.jsp");
				System.out.println("no user");
			}
				
		}
		else
		{
			request.getSession(false).invalidate();
			response.sendRedirect("Login.jsp");
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);

	}
}
