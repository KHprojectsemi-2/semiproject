package matching.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.model.service.PetService;
import user.model.vo.Pet;

/**
 * Servlet implementation class ApplyBoforePetSearch
 */
@WebServlet("/applypet.hm")
public class ApplyBoforePetSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApplyBoforePetSearch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		ArrayList<Pet> pList = new PetService().selectPet(userId);
		
		if(pList.isEmpty()){
			pList = new ArrayList<Pet>();
			request.setAttribute("pList", pList);
		}else{
			request.setAttribute("pList", pList);
		}
		RequestDispatcher view = request.getRequestDispatcher("/views/petsitterreservation/houseMatchingApply.jsp");
		
		view.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
