package mapping;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// customer => *.cu (고객 관련 처리는 여기 컨틀롤러)
@WebServlet("*.test2")
public class Test2 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// resp (응답여기서 처리)
		//req
		resp.getWriter().print("kgh res");
	}
}
