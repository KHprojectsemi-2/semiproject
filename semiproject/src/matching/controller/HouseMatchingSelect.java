package matching.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import matching.model.service.MatchingService;
import matching.model.vo.Matching;
import matching.model.vo.MatchingUserJoin;
import matching.model.vo.PetSitterMatchingJoin;
import user.model.service.PetService;
import user.model.vo.Pet;

/**
 * Servlet implementation class HouseMatchingSelect
 */
@WebServlet("/select.hm")
public class HouseMatchingSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HouseMatchingSelect() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");
		
		ArrayList<Pet> pList = new PetService().selectNotMatchingPet(userid);
		ArrayList<MatchingUserJoin> mList = new MatchingService().selectHouseMatching();
		Matching mt = new MatchingService().isHouseDuplicate(userid);
		
		if(pList.isEmpty()){
			pList = new ArrayList<Pet>();
			request.setAttribute("pList", pList);
		}else{
			request.setAttribute("pList",pList);
		}
		
		if(mt==null){
			mt = new Matching();
			request.setAttribute("mt",mt);
		}else{
			request.setAttribute("mt",mt);
		}
		
		
		RequestDispatcher view = request.getRequestDispatcher("views/petsitterreservation/houseMatchingSelect.jsp");
		request.setAttribute("mList", mList);
		
		
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
