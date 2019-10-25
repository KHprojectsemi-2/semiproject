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
 * Servlet implementation class InsertQBoardServlet
 */
@WebServlet("/insert.qbo")
public class InsertQBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertQBoardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();	
		User loginUser = (User)session.getAttribute("loginUser");	
		String category = request.getParameter("category");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String writer = loginUser.getUserId();
		
		QuestionBoard qb = new QuestionBoard();
		qb.setCategory(category);
		qb.setTitle(title);
		qb.setContent(content);
		qb.setUserId(writer);
		
		int result = new BoardService().insertQBoard(qb);
		
		if(result > 0) {
			response.sendRedirect("index.jsp");	//여기는 나중에 마이페이지로가서 작성된거 확인하게끔 경로지정하면 좋을듯
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
