package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    
	    try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/orcl","scott","admin");
			PreparedStatement psmt=conn.prepareStatement("select * from tab_user where username=? and password=?");
			psmt.setObject(1, username);
			psmt.setObject(2, password);
			ResultSet rs=psmt.executeQuery();
			if(rs.next()){
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String pass = rs.getString(3);
				User user = new User();
				user.setId(id);
				user.setUsername(name);
				user.setPassword(pass);
				request.getSession().setAttribute("user", user);
				request.getRequestDispatcher("success.jsp").forward(request, response);
			}else{
				request.setAttribute("flag", "用户名或密码错误！！！");
				request.getRequestDispatcher("login.jsp").forward(request, response);			
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
