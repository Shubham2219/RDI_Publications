/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.*;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 *
 * @author Shubham
 */
public class Login extends HttpServlet {
	
        private static final long serialVersionUID = 1L;
    
    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un=request.getParameter("username");
		String pw=request.getParameter("password");
		
                 HttpSession session = request.getSession(false);
                 if(session!=null)
                 session.setAttribute("name", un);
                
                if(LoginDao.validate(un, pw)){  
            RequestDispatcher rd=request.getRequestDispatcher("profile.jsp");  
            rd.forward(request,response);  
        }  
        else{  
            //out.print("<p style=\"color:red\">Sorry username or password error</p>");  
            RequestDispatcher rd=request.getRequestDispatcher("indx.jsp");  
            rd.include(request,response);  
        } 
		
	}
}
