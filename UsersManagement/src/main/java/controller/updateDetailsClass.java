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


@WebServlet("/updateDetails")
public class updateDetailsClass extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = new User();
		
		user.setUserId(Integer.parseInt(req.getParameter("id")));
		
		user.setName(req.getParameter("name"));
		user.setUserName(req.getParameter("uName"));
		user.setAge(Integer.parseInt(req.getParameter("age")));
		user.setPhone(Long.parseLong(req.getParameter("phone")));
		user.setGender(req.getParameter("gen"));
		user.setPassword(req.getParameter("pass"));
		user.setcPassword(req.getParameter("pass"));
		System.out.println(user);
		
		userDao dao = new userDao();
		dao.updateUser(user);
		
		req.setAttribute("success", user.getName()+" - user successfully updated");
		RequestDispatcher dispatcher = req.getRequestDispatcher("Login.jsp");
		dispatcher.forward(req, resp);
		
	}

}
