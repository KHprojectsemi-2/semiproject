package board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.QuestionBoard;

/**
 * Servlet implementation class AdminWriteQb
 */
@WebServlet("/writeqb.bo")
public class AdminWriteQbServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminWriteQbServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int qbn = Integer.valueOf(request.getParameter("qbn"));

		QuestionBoard qb = new BoardService().selectQBoard(qbn);
		RequestDispatcher view = null;
		if(qb != null) {
			view = request.getRequestDispatcher("views/serviceCenter/AdminwriteQb.jsp");
 			request.setAttribute("qb", qb);
		}else {
			request.setAttribute("msg", "관리자 선택문의사항 조회 실패!");
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
