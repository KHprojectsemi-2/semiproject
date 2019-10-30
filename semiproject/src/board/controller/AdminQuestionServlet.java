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
import board.model.vo.PageInfo;
import board.model.vo.QuestionBoard;

/**
 * Servlet implementation class AdminQuestionServlet
 */
@WebServlet("/adminQBoard.bo")
public class AdminQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminQuestionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardService bService = new BoardService();
		
		int listCount = bService.getQListCount();		
		int currentPage;	
		int limit;			
		int maxPage;		
		int startPage;		
 		int endPage;			
		
 		currentPage = 1;
 		
 		if(request.getParameter("currentPage") != null) {
 			currentPage = Integer.parseInt(request.getParameter("currentPage"));
 		}
 		
 		limit = 5;

 		maxPage = (int)((double)listCount/limit + 0.8);
 			
		startPage = (((int)((double)currentPage/limit + 0.8)) - 1) * limit + 1;
 		endPage = startPage + limit - 1;
 		
 		if(maxPage < endPage) {
 			endPage = maxPage;
 		}
 		
 		PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
 		
 		ArrayList<QuestionBoard> qlist = bService.questionList(currentPage, limit);
 		
 		RequestDispatcher view = null;
 		if(qlist != null) {
 			view = request.getRequestDispatcher("views/serviceCenter/AdminQuestion.jsp");
 			
 			request.setAttribute("list", qlist);
 			request.setAttribute("pi", pi);
 		}else {
 			request.setAttribute("msg", "관리자 문의하기 게시판조회 실패!");
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
