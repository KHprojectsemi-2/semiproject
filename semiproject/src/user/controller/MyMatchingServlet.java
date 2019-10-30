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
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("userId");
		PetSitter ps = new MyMatchingService().findSitter(userId);
		System.out.println(userId);
		System.out.println(ps);
		
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
			System.out.println(ps);
			
			//지난매칭
			//내가 시터입장 - 방문 - reg4
			ArrayList<Matching> eList1 = new MyMatchingService().viewEndMatching(userId);
			//내가 시터입장 - 가정집 - reg4
			ArrayList<Matching> eList2 = new MyMatchingService().viewEndMatching2(userId);
			//내가 견주입장 - 방문 - reg4
			ArrayList<Matching> eList3 = new MyMatchingService().viewEndMatching3(userId);
			//내가 견주입장 - 가정집 - reg4
			ArrayList<Matching> eList4 = new MyMatchingService().viewEndMatching4(userId);
		
			if(yList1.isEmpty()) {
				yList1 = new ArrayList<Matching>();
				request.setAttribute("yList1", yList1);
			}else {
				request.setAttribute("yList1", yList1);
			}
			System.out.println("되냐1?");
			if(yList2.isEmpty()) {
				yList2 =new  ArrayList<Matching>();
				request.setAttribute("yList2", yList2);
				System.out.println(yList2);
			}else {
				request.setAttribute("yList2", yList2);
			}
			System.out.println("ehlsi?");
			if(nList1.isEmpty()) {
				nList1 = new ArrayList<Matching>();
				request.setAttribute("nList1", nList1);
			}else {
				request.setAttribute("nList1", nList1);
			}
			if(nList2.isEmpty()) {
				nList2 = new ArrayList<Matching>();
				request.setAttribute("nList2", nList2);
			}else {
				request.setAttribute("nList2", nList2);
			}
			if(nList3.isEmpty()) {
				nList3 = new ArrayList<Matching>();
				request.setAttribute("nList3", nList3);
			}else {
				request.setAttribute("nList3", nList3);
			}
			if(nList4.isEmpty()) {
				nList4 = new ArrayList<Matching>();
				request.setAttribute("nList4", nList4);
			}else {
				request.setAttribute("nList4", nList4);
			}
			if(nList5.isEmpty()) {
				nList5 = new ArrayList<Matching>();
				request.setAttribute("nList5", nList5);
			}else {
				request.setAttribute("nList5", nList5);
			}
			if(nList6.isEmpty()) {
				nList6 = new ArrayList<Matching>();
				request.setAttribute("nList6", nList6);
			}else {
				request.setAttribute("nList6", nList6);
			}
			if(nList7.isEmpty()) {
				nList7 = new ArrayList<Matching>();
				request.setAttribute("nList7", nList7);
			}else {
				request.setAttribute("nList7", nList7);
			}
			if(nList8.isEmpty()) {
				nList8 = new ArrayList<Matching>();
				request.setAttribute("nList8", nList8);
			}else {
				request.setAttribute("nList8", nList8);
			}
			if(eList1.isEmpty()) {
				eList1 = new ArrayList<Matching>();
				request.setAttribute("eList1", eList1);
			}else {
				request.setAttribute("eList1", eList1);
			}
			if(eList2.isEmpty()) {
				eList2 = new ArrayList<Matching>();
				request.setAttribute("eList2", eList2);
			}else {
				request.setAttribute("eList2", eList2);
			}
			if(eList3.isEmpty()) {
				eList3 = new ArrayList<Matching>();
				request.setAttribute("eList3", eList3);
			}else {
				request.setAttribute("eList3", eList3);
			}
			if(eList4.isEmpty()) {
				eList4 = new ArrayList<Matching>();
				request.setAttribute("eList4", eList4);
			}else {
				request.setAttribute("eList4", eList4);
			}
			
			
			
			
			
		
			request.getRequestDispatcher("views/myPage/myMatching.jsp").forward(request, response);
			System.out.println("되냐?");
		
		
		
		
		
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
