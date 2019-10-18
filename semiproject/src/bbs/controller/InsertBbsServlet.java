package bbs.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bbs.model.service.BbsService;
import bbs.model.vo.Bbs;
import user.model.vo.User;

/**
 * Servlet implementation class InsertBbsServlet
 */
@WebServlet("/insertBbs.bo")
public class InsertBbsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Object poster_id;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertBbsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String type = integer(request.getParameter("type"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		HttpSession session = request.getSession(); //세션 가지고 오기
		
		User loginUser = (User)session.getAttribute("loginUser");  // 사용자 정보 가지고 오기
		
		String writer = String.valueOf(loginUser.getUserNo());
		
		Bbs b = new Bbs();
		b.setType(type);
		b.setTitle(title);
		b.setContent(content);

		
		int result = new BbsService().insertBbs(b);
		
		if(result>0) {
			response.sendRedirect("/bbslist.bo?currentPage=1");
		}else {
			request.setAttribute("msg","게시판 작성 실패!!");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
		
	}

	private String integer(String parameter) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
