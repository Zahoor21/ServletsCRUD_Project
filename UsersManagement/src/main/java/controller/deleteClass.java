package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.userDao;
import dto.User;

@WebServlet("/Delete")
public class deleteClass extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));

		userDao dao = new userDao();
		User user = dao.deleteUserById(id);

		req.setAttribute("delete", user.getName() + " - user deleted successfully");
		RequestDispatcher dispatcher = req.getRequestDispatcher("Display");
		dispatcher.forward(req, resp);

	}

}
