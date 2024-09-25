package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.userDao;
import dto.User;

@WebServlet("/Display")
public class DisplayClass extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		userDao userDao = new userDao();
		List<User> Udata = userDao.fetchAll();

		System.out.println(Udata);

		req.setAttribute("uData", Udata);
		RequestDispatcher dispatcher = req.getRequestDispatcher("Display.jsp");
		dispatcher.forward(req, resp);
	}
}
