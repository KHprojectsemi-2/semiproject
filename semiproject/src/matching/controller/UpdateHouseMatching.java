package matching.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import matching.model.service.MatchingService;

/**
 * Servlet implementation class UpdateHouseMatching
 */
@WebServlet("/Update.hm")
public class UpdateHouseMatching extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateHouseMatching() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("하이요");
		
		String muserid = request.getParameter("muserid");
		String sitterid = request.getParameter("sitterid");
		String mspnote = request.getParameter("mspnote");
		String msay = request.getParameter("msay");
		int mprice = Integer.valueOf(request.getParameter("mprice"));
		String mdateStr = request.getParameter("mdate");
		int petcount = Integer.valueOf(request.getParameter("petcount"));
		
		java.sql.Date mdate = java.sql.Date.valueOf(mdateStr);
		
		
		
		System.out.println(muserid+","+sitterid+","+mspnote+","+msay+","+mprice+","+mdate+","+petcount);
		
		int updateresult = new MatchingService().updateMatchingHouse(muserid);
		int insertresult = new MatchingService().insertMatchingHouse(muserid,sitterid,mspnote,msay,mprice,mdate,petcount);
		
		String page ="";
		
		if(updateresult>0 && insertresult>0){
			page="index.jsp";
		}else{
			page="views/common/errorPage.jsp";
			request.setAttribute("msg", "실패");
		}
		
		RequestDispatcher view = request.getRequestDispatcher(page);
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
