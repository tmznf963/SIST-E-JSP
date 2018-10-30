import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/IncludeDemo")
public class IncludeDemoServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html;charset=utf-8");
		RequestDispatcher rd = req.getRequestDispatcher("/date.jsp");
		PrintWriter out = res.getWriter();
		out.print("<h1>Include Demo Page</h1>");
		rd.include(req, res);
		out.println("<hr>");
		rd = req.getRequestDispatcher("/image.html");
		rd.include(req, res);
		out.println("<hr>");
		out.println("<div>Copyright all reserved.</div>");
		out.close();
	}

}
