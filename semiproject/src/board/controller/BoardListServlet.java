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
import board.model.vo.PageInfo;

/**
 * Servlet implementation class BordListServlet
 */
@WebServlet("/blist.bo")
public class BoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				BoardService bService = new BoardService();
				
				int listCount = bService.getListCount();
					
				int currentPage;	
				int limit;			
				int maxPage;		
				int startPage;		
		 		int endPage;			
				
		 		
		 		limit = 5;
	
		 		maxPage = (int)((double)listCount/limit + 0.8);
		 		
		 		currentPage = maxPage;
		 		
		 		if(request.getParameter("currentPage") != null) {
		 			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		 		}
		 		
				startPage = (((int)((double)currentPage/limit + 0.8)) - 1) * limit + 1;
		 		endPage = startPage + limit - 1;
		 		
		 		if(maxPage < endPage) {
		 			endPage = maxPage;
		 		}
		 		
		 		PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
		 		
		 		ArrayList<Board> list = bService.selectList(currentPage, limit);
		 		
		 		RequestDispatcher view = null;
		 		if(list != null) {
		 			view = request.getRequestDispatcher("views/serviceCenter/FAQ.jsp");
		 			request.setAttribute("list", list);
		 			request.setAttribute("pi", pi);
		 		}else {
		 			System.out.println("게시판 실패");
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
