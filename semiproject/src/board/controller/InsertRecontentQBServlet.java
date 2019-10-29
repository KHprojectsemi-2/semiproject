package board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.model.service.BoardService;
import board.model.vo.QuestionBoard;
import user.model.vo.User;

/**
 * Servlet implementation class InsertRecontentQBServlet
 */
@WebServlet("/insert.reqbo")
public class InsertRecontentQBServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertRecontentQBServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String recontent = request.getParameter("recontent");
		int qbn = Integer.valueOf(request.getParameter("qbn"));
		
		QuestionBoard qb = new QuestionBoard();
		qb.setReContent(recontent);
		qb.setBoardNo(qbn);
		
		int result = new BoardService().insertReQBoard(qb);
		
		if(result > 0) {
			response.sendRedirect("adminQBoard.bo");
		}else {
			request.setAttribute("msg", "게시판 작성 실패!");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
