package matching.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import matching.model.service.MatchingService;
import matching.model.vo.PetSitterMatchingJoin;
import petSitter.model.service.PetSitterService;

/**
 * Servlet implementation class petSitterSearch
 */
@WebServlet("/petsittersearch.pe")
public class PetSitterSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PetSitterSearch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bigdog = Integer.valueOf(request.getParameter("bigdog"));
		int medic = Integer.valueOf(request.getParameter("medic"));
		int olddog = Integer.valueOf(request.getParameter("olddog"));
		int patientdog = Integer.valueOf(request.getParameter("patientdog"));
		int resume = Integer.valueOf(request.getParameter("resume"));
		
		
		ArrayList<PetSitterMatchingJoin> pList = new MatchingService().searchPetsitter(bigdog,medic,olddog,patientdog,resume);
		
		response.setContentType("application/json;");
		
		new Gson().toJson(pList,response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
