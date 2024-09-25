package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.userDao;
import dto.User;

@WebServlet("/LoginDet")
public class LoginClass extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userName = req.getParameter("userName");
		String password = req.getParameter("password");

		userDao dao = new userDao();
		User user = dao.fetchByUserName(userName);
		System.out.println(user);

		if (user.getUserName() == null) {
			req.setAttribute("success", "Invalid UserName");
			RequestDispatcher dispatcher = req.getRequestDispatcher("Login.jsp");
			dispatcher.forward(req, resp);
		}

		if (user.getUserName().equals(userName)) {
			if (user.getPassword().equals(password)) {
				req.setAttribute("UName", userName);
				RequestDispatcher dispatcher = req.getRequestDispatcher("Display");
				dispatcher.forward(req, resp);
//				resp.sendRedirect("./Display");
			} else {
				req.setAttribute("success", "Invalid Password");
				RequestDispatcher dispatcher = req.getRequestDispatcher("Login.jsp");
				dispatcher.forward(req, resp);
			}

		} else {
			req.setAttribute("success", "Invalid UserName");
			RequestDispatcher dispatcher = req.getRequestDispatcher("Login.jsp");
			dispatcher.forward(req, resp);
		}

	}
}
