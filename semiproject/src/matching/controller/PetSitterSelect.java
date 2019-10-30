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
import matching.model.vo.PetSitterMatchingJoin;
import petSitter.model.service.PetSitterService;
import petSitter.model.vo.PetSitter;
import user.model.service.PetService;
import user.model.vo.Pet;


/**
 * Servlet implementation class petSitterSelelct
 */
@WebServlet("/select.pe")
public class PetSitterSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PetSitterSelect() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sitterid = request.getParameter("sitterid");
		
		System.out.println("sitterid:"+sitterid);
		
		ArrayList<Pet> pt = new PetService().selecthPet(sitterid);
		Matching mt = new MatchingService().isDuplicate(sitterid);
		ArrayList<PetSitterMatchingJoin> psmList = new MatchingService().selectPetSitter();
		
		
		RequestDispatcher view = request.getRequestDispatcher("views/petsitterreservation/petSitterSearch.jsp");
		request.setAttribute("psmList", psmList);
		if(mt != null){
		request.setAttribute("mt",mt);
		}else{
			mt = new Matching();
			request.setAttribute("mt",mt);
		}
		request.setAttribute("pt", pt);
		
		
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
