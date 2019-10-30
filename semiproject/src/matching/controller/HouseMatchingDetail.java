package matching.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import matching.model.service.MatchingService;
import matching.model.vo.Matching;
import matching.model.vo.MatchingUserJoin;
import user.model.service.PetService;
import user.model.vo.Pet;

/**
 * Servlet implementation class HouseMatchingDetail
 */
@WebServlet("/housematchingdetail.pe")
public class HouseMatchingDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HouseMatchingDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userid");
		
		MatchingUserJoin m = new MatchingService().searchHouseMatching(userId);
		
		ArrayList<Pet> pList = new PetService().selectcarePet(userId);
		
		request.setAttribute("m", m);
		System.out.println("여기스 m 모임?:"+m);
		request.setAttribute("pList", pList);
		
		request.getRequestDispatcher("views/petsitterreservation/houseMatchingDetail.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
