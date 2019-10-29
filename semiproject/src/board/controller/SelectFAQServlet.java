package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Board;

/**
 * Servlet implementation class SelectFAQ
 */
@WebServlet("/selectFAQ.bo")
public class SelectFAQServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectFAQServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bNo = Integer.valueOf(request.getParameter("bNo"));
		
		Board b = new BoardService().selectFAQ(bNo);
		
		RequestDispatcher view = null;
 		if(b != null) {
 			view = request.getRequestDispatcher("views/serviceCenter/modifyFAQ.jsp");

 			request.setAttribute("b", b);
 		}else {
 			request.setAttribute("msg", "관리자게시판조회 실패!");
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
