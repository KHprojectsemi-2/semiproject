package user.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.vo.PageInfo;
import user.model.service.UserService;
import user.model.vo.User;

/**
 * Servlet implementation class UserSearchServlet
 */
@WebServlet("/userSearch.li")
public class UserSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 게시판 리스트 갯수 구하기
		int listCount = new UserService().getUserCount();
		
		//---------------------- 페이징 처리 추가 ----------------------
		// 페이지 수 처리용 변수 선언
		int currentPage;	// 현재 페이지를 표시할 변수
		int limit;			// 한 페이지에 표시할 게시글과 처리가능한 페이지 수
		int maxPage;		// 전체 페이지에서 가장 마지막 페이지
		int startPage;		// 한번에 표시될 페이지가 시작할 페이지
		int endPage;		// 한번에 표시될 페이지가 끝나는 페이지
		
		 
		currentPage = 1; // 1페이지를 default로 가져가자
		
		if(request.getParameter("currentPage")!=null) {
			currentPage = Integer.valueOf(request.getParameter("currentPage"));
			listCount = new UserService().getUserCount();
			System.out.println(listCount);
		}
		/*
		 * if(request.getParameter("searchContent")!=null) { currentPage = 1; //
		 * listcount에 유저 수부터 다시 구함 }
		 */
		limit = 10;

		maxPage = (int)((double)listCount/limit +0.9);
		startPage = (((int)((double)currentPage/limit+0.9))-1)*limit + 1;
		endPage = startPage +limit - 1;
		if(maxPage<endPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(currentPage,listCount,limit,maxPage,startPage,endPage);
		ArrayList<User> userList = null;
		System.out.println(pi);
		if(request.getParameter("searchContent")!=null) {
			// 서로 다른 작업
		}else {
			userList = new UserService().selectUserList(currentPage,limit);
		}
		System.out.println(userList);
		
		RequestDispatcher view = null;
		if(userList!=null) {
			
			view = request.getRequestDispatcher("views/user/UserSearchPage.jsp");
			request.setAttribute("userList", userList);			// 현재 페이지에 화면에 뿌려질 게시글이 담긴 객체
			request.setAttribute("pi", pi);				// 페이지에 관련된 정보가 담긴 객체
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
