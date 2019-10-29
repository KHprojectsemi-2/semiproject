package user.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import petSitter.model.vo.PetSitter;
import user.model.service.MyMatchingService;
import user.model.vo.Matching;

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
		Matching m = new Matching();
		PetSitter ps = new MyMatchingService().findSitter(userId);
		
		
		if(ps.getChkResume().equals('N') || ps==null) {//펫시터 자격이 없을 때
			ArrayList<Matching> yList1 = null;
			ArrayList<Matching> yList2 = new MyMatchingService().viewYetMatching2(userId);
			ArrayList<Matching> nList1 = null;
			ArrayList<Matching> nList2 = null;
			ArrayList<Matching> nList3 = new MyMatchingService().viewNowMatching3(userId);
			ArrayList<Matching> nList4 = new MyMatchingService().viewNowMatching4(userId);
			ArrayList<Matching> nList5 = null;
			ArrayList<Matching> nList6 = null;
			ArrayList<Matching> nList7 = new MyMatchingService().viewNowMatching(userId);
			ArrayList<Matching> nList8 = new MyMatchingService().viewNowMatching(userId);
			ArrayList<Matching> eList1 = null;
			ArrayList<Matching> eList2 = null;
			ArrayList<Matching> eList3 = new MyMatchingService().viewEndMatching(userId);
			ArrayList<Matching> eList4 = new MyMatchingService().viewEndMatching(userId);
		}else {
			//내 신청매칭
			//내가 펫시터 입장
			ArrayList<Matching> yList1 = new MyMatchingService().viewYetMatching(userId);
			//내가 견주 입장
			ArrayList<Matching> yList2 = new MyMatchingService().viewYetMatching2(userId);
			
			//진행중인 매칭
			//내가 펫시터입장 - 방문 - reg2
			ArrayList<Matching> nList1 = new MyMatchingService().viewNowMatching(userId);
			//내가 펫시터입장 - 가정집 - reg2
			ArrayList<Matching> nList2 = new MyMatchingService().viewNowMatching2(userId);
			//내가 펫시터입장 - 방문 - reg3
			ArrayList<Matching> nList3 = new MyMatchingService().viewNowMatching3(userId);
			//내가 펫시터입장 - 가정집 - reg3
			ArrayList<Matching> nList4 = new MyMatchingService().viewNowMatching4(userId);
			//내가 견주입장 - 방문 - reg2
			ArrayList<Matching> nList5 = new MyMatchingService().viewNowMatching5(userId);
			//내가 견주입장 - 가정집 - reg2
			ArrayList<Matching> nList6 = new MyMatchingService().viewNowMatching6(userId);
			//내가 견주입장 - 방문 - reg3
			ArrayList<Matching> nList7 = new MyMatchingService().viewNowMatching7(userId);
			//내가 견주입장 - 가정집 - reg3
			ArrayList<Matching> nList8 = new MyMatchingService().viewNowMatching8(userId);
			
			
			//
			ArrayList<Matching> eList1 = new MyMatchingService().viewEndMatching(userId);
			ArrayList<Matching> eList2 = new MyMatchingService().viewEndMatching2(userId);
			ArrayList<Matching> eList3 = new MyMatchingService().viewEndMatching3(userId);
			ArrayList<Matching> eList4 = new MyMatchingService().viewEndMatching4(userId);
		}
		
		
		ArrayList<>
		
		request.setAttribute("mmList", mmList);
		
		request.getRequestDispatcher("views/myPage/MyMatching.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
