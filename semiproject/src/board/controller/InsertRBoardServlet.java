package board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.model.service.BoardService;
import board.model.vo.ReportBoard;
import user.model.vo.User;

/**
 * Servlet implementation class InsertRBoardServlet
 */
@WebServlet("/insert.rbo")
public class InsertRBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertRBoardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();	
		User loginUser = (User)session.getAttribute("loginUser");
		
		String repType = request.getParameter("repType");
		String repUser = request.getParameter("repUser");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String writer = loginUser.getUserId();
		
		ReportBoard rb = new ReportBoard();
		rb.setRepType(repType);
		rb.setRepUser(repUser);
		rb.setTitle(title);
		rb.setContent(content);
		rb.setUserId(writer);
		
		int result = new BoardService().insertRBoard(rb);
		
		if(result > 0) {
			response.sendRedirect("index.jsp");
		}else {
			request.setAttribute("msg", "신고하기 실패!");
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
