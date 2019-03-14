import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset utf-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();

		String name = request.getParameter("onoma");
		String code = request.getParameter("psw");

			if (name != null && code != null && name.equals("admin") && code.equals("admin")) {
			HttpSession session = request.getSession();
			session.setAttribute("user", name);
			session.setAttribute("ucode", code);
			
			RequestDispatcher rd = request.getRequestDispatcher("logout.jsp");
			rd.forward(request, response);
		} else {
			out.print("<h4 class=\"text-warning\"> Λάθος στοιχεία!</h4>");
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.include(request, response);

		}

	}

}
