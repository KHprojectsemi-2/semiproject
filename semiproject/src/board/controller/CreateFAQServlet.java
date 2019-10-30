package board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.model.service.BoardService;
import board.model.vo.Board;
import user.model.vo.User;

/**
 * Servlet implementation class CreateFAQServlet
 */
@WebServlet("/createFAQ.bo")
public class CreateFAQServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateFAQServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();	
		User loginUser = (User)session.getAttribute("loginUser");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		System.out.println("servlet content : "+content);
		
		Board b = new Board();
		b.setTitle(title);
		b.setContent(content);
		b.setUserId(loginUser.getUserId());
		
		int result = new BoardService().createFAQ(b);
		
		System.out.println("servlet result : "+result);
		
		if(result > 0) {
			response.sendRedirect("AdminFAQList.bo?currentPage=1");
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
