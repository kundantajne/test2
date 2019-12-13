package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.HibernateRegisterService;
import com.pojo.User;

/**
 * Servlet implementation class RegServlet
 */
@WebServlet("/reg")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		try {
			String uname=request.getParameter("uname");
			String email=request.getParameter("email");
			String mobileNumber=request.getParameter("mn");
			String pass=request.getParameter("pass");
			
			User user=new User();
			
			user.setUname(uname);
			user.setEmail(email);
			user.setMobileNumber(mobileNumber);
			user.setPass(pass);
			
			HibernateRegisterService.registerUser(user);
			response.sendRedirect("login.jsp");
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.setAttribute("ERROR","Email already Exits!!!!");
			response.sendRedirect("register.jsp");
		}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
