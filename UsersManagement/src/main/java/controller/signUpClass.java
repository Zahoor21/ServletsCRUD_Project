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


@WebServlet("/SignupSuccess")
public class signUpClass extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		User user = new User();
		
		user.setName(req.getParameter("name"));
		user.setUserName(req.getParameter("userName"));
		user.setAge(Integer.parseInt(req.getParameter("age")));
		user.setPhone(Long.parseLong(req.getParameter("phone")));
		user.setGender(req.getParameter("gen"));
		user.setPassword(req.getParameter("password"));
		user.setcPassword(req.getParameter("ConfirmPassword"));
		System.out.println(user);
		
		
		userDao dao = new userDao();
		dao.saveUser(user);
		
		
		if(user != null) {
			req.setAttribute("success", "Successfully SignedUp, Please Login-In");
			RequestDispatcher dispatcher = req.getRequestDispatcher("Login.jsp");
//			resp.sendRedirect("Login.jsp");
			dispatcher.forward(req, resp);
		}
		else {
			req.setAttribute("failure", "Invalid - Submission");
			RequestDispatcher dispatcher = req.getRequestDispatcher("SignUp.jsp");
//			resp.sendRedirect("Login.jsp");
			dispatcher.forward(req, resp);
		}
		
		
		

		
		
		
		
		
	}
	
	
	
}
