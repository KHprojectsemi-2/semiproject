package board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.ReportBoard;
import user.model.vo.User;

/**
 * Servlet implementation class SelectRBoardServlet
 */
@WebServlet("/selectrb.bo")
public class SelectRBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectRBoardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rbn = Integer.valueOf(request.getParameter("rbn"));
		String repUser = request.getParameter("repUser");
		
		User user = new BoardService().selectRepUser(repUser);
		ReportBoard rb = new BoardService().selectRBoard(rbn);
		
		RequestDispatcher view = null;
		if(rb != null && user != null) {
			view = request.getRequestDispatcher("views/serviceCenter/viewRB.jsp");
			request.setAttribute("user", user);
 			request.setAttribute("rb", rb);
		}else {
			request.setAttribute("msg", "관리가 선택신고하기 조회 실패!");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
		view.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
