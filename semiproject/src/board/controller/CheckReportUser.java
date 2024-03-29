package board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import user.model.vo.User;

/**
 * Servlet implementation class CheckReportUser
 */
@WebServlet("/checkRepUser.me")
public class CheckReportUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckReportUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String repUserId = request.getParameter("repUser");
		String loginUserId = request.getParameter("loginUser");

		User user = new BoardService().checkRepUser(repUserId);
		
		
		PrintWriter out = response.getWriter();
		
		if(user == null) {
			out.append("fail");
		}else if(user.getUserId().equals(loginUserId)){
			out.append("same");
		}else {
			out.append("success");
		}

		out.flush(); 
		out.close();
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
