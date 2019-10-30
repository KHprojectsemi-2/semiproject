package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import user.model.vo.User;

/**
 * Servlet implementation class ReportedUserServlet
 */
@WebServlet("/addrepPoint.bo")
public class ReportedUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportedUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rbn = Integer.valueOf(request.getParameter("rbn"));
		String repUserId = request.getParameter("repUserId");
		
		int repPoint = new BoardService().reportUser(repUserId);
		int repStatus = new BoardService().repStatus(rbn);
		
		 if(repPoint > 0 && repStatus > 0) {
			 response.sendRedirect("adminRBoard.bo");
		 }else{ 
			 request.setAttribute("msg", "신고처리 실패!");
			 request.getRequestDispatcher("views/common/errorPage.jsp").forward(request,response);
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
