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
import matching.model.vo.Matching;
import user.model.service.MyMatchingService;

/**
 * Servlet implementation class MyMatching
 */
@WebServlet("/myrequest.ma")
public class MyMatchingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyMatchingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf=8");
		String userId = request.getParameter("userId");
		//일단 페이징 처리
		MyMatchingService mService = new MyMatchingService();
		
		int listCount = mService.getListCount();
		
		int currentPage;
		int limit;
		int maxPage;
		int startPage;
		int endPage;
		
		currentPage = 1;
		if(request.getParameter("currentPage")!=null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		//한 페이지에 보여질 목록 갯수
		limit = 10;
		//총 페이지 수
		maxPage=(int)((double)listCount/limit+0.9);
		
		//현재 페이지에 보여질 시작 페이지 수
		startPage = (((int)((double)currentPage/limit+0.9))-1)*limit+1;
		
		//현재 페이지에서 보여질 마지막 페이지 수
		endPage = startPage + limit - 1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
		
		ArrayList<Matching> yList = mService.selectList(currentPage,limit);
		ArrayList<Matching> nList = mService.selectList(currentPage,limit);
		ArrayList<Matching> eList = mService.selectList(currentPage,limit);
		
		RequestDispatcher view = null;
		if(yList !=null) {
			view = request.getRequestDispatcher("views/myPage/myMatching.jsp");
			request.setAttribute("yList", yList);
			request.setAttribute("pi", pi);
		}else {
			view = request.getRequestDispatcher("/views/common/errorPage.jsp");
			request.setAttribute("msg", "신청한 매칭 조회 실패");
		}
		if(nList !=null) {
			view = request.getRequestDispatcher("views/myPage/myMatching.jsp");
			request.setAttribute("nList", nList);
			request.setAttribute("pi", pi);
		}else {
			view = request.getRequestDispatcher("/views/common/errorPage.jsp");
			request.setAttribute("msg", "신청한 매칭 조회 실패");
		}
		if(eList !=null) {
			view = request.getRequestDispatcher("views/myPage/myMatching.jsp");
			request.setAttribute("eList", eList);
			request.setAttribute("pi", pi);
		}else {
			view = request.getRequestDispatcher("/views/common/errorPage.jsp");
			request.setAttribute("msg", "신청한 매칭 조회 실패");
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
