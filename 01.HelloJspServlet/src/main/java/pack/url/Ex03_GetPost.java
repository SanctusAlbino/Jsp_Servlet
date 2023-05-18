package pack.url;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex03_GetPost")
public class Ex03_GetPost extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String reqtxt = request.getParameter("txt1");
		String reqtxt1 = request.getParameter("txt2");
		System.out.println(reqtxt);
		System.out.println(reqtxt1);
		
		response.getWriter().append(" get kgh ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append(" post kgh ").append(request.getContextPath());
	}

}
