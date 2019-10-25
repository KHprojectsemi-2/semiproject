package bbs.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bbs.model.service.BoardService;
import bbs.model.vo.Board;
import bbs.model.vo.Reply;

/**
 * Servlet implementation class BoardDetailServlet
 */
@WebServlet("/detail.bo")
public class BoardDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bid=Integer.parseInt(request.getParameter("bid"));
		
		Board board = new BoardService().selectBoard(bid);
		
		// ------------ 이부분은 ajax 기능으로 댓글 기능을 추가하기 위해서 작성하는 부분 ----------------------
		//  우선 댓글 달기 기능을 위해서 Reply vo 클래스를 만들어주고 오자.
		ArrayList<Reply> rlist = new BoardService().selectReplyList(bid);

		// -------------------------------------------------------------------------------------
		
		if(board != null) {
			request.setAttribute("board", board);
			// ------------------------- 이부분은 ajax 기능으로 댓글 기능을 추가하기 위해 작성 하는 부분 -------------------
			request.setAttribute("rlist", rlist);
			// boardDetailView.jsp로 가서 댓글 리스트가 보여지도록 화면단 작성하자.
			
			
			
			request.getRequestDispatcher("views/bbs/boardDetailView.jsp").forward(request, response);
		}else {
			request.setAttribute("msg", "게사판 상세조회 실패!");
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
