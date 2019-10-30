package diary.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import diary.model.service.DiaryService;
import matching.model.vo.Matching;
import user.model.vo.User;

/**
 * Servlet implementation class FirstDiaryServlet
 */
@WebServlet("/firstDiary.dr")
public class FirstDiaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FirstDiaryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		User loginUser = (User)session.getAttribute("loginUser");
		String userId = loginUser.getUserId();
		
		Matching matchNo = new DiaryService().getMatchNo(userId);
		
		System.out.println(userId);
		
		System.out.println(matchNo.getMatch_No());
		
		RequestDispatcher view=null;
		
		if(matchNo != null) {	// 성공했을 때
			view = request.getRequestDispatcher("views/diary/insertDiary.jsp");
			request.setAttribute("matchNo", matchNo);
		}else {	// 실패했을 때
			view = request.getRequestDispatcher("views/common/errorPage.jsp");
			request.setAttribute("msg", "돌봄일지 실패!");
			view.forward(request, response);
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
