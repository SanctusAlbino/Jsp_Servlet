package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/te")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//02프로젝트는 세팅 부분을 혼자 실습하고, request와 response를 대략적으로 살펴보는 프로젝트로,
	//다시 공부하거나 할 필요는 많이 없음
   // URL : 톰캣 (localhost:portNumber(192.168.0.122:8080)/web project/mapping)
	// http://192.168.0.122:8080/do/te ↓GET방식 요청시 doGetMethod가 자동으로 실행됨 (TomCat)
	// 프로젝트를 새로 만들었을때에는 Tomcat이 프로젝틀르 인식할수있게 add&remove를 통해서 프로젝트를 넣어준다.
	
	//HttpServletReqest : Reqeust 객체 톰켓에서 요청이 오면 모든 정보를 Request를 통해 담아서 JAVA코드로 준다.
	// 					요처에 관련 된 모든 기능을 담당한다.
	//HttpServletResponse : Response 객체 Request객체로 요청 처리를 받고 Client(크롬)에 응답을 주기 위한 객체
	//						페이지 전환, 페이지에 내용 표시 등의 크롬창의 표시를 담함
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("이건가?");
		String param =req.getParameter("param");
		System.out.println("크롬을 통해 GET방식으로 param 정보가 들어옴" + param);
		
		//res<=
		//model : 현재 param.equals해놓은 부분을 DAO(JDBC)이용해서 select쿼리 수행 후 결과로 판단하게 수정.
		//ex) 아이디 비번 올바른 요청아님
		if(param != null && param.equals("newPage")) {
			RequestDispatcher rd = req.getRequestDispatcher("index.html");
			rd.forward(req, res);			
		}else {
			
			res.setCharacterEncoding("UTF-8");
			res.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = res.getWriter();
			writer.println("<html>");
			writer.println("<body>");
			writer.println("<h1>응답객체로 페이지에 쓰기 </h1>");
			writer.println("</body>");
			writer.println("</html>");
		}
		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	

}
