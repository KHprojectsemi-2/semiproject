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
import matching.model.vo.PetSitterMatchingJoin;

/**
 * Servlet implementation class AdminDeleteInvite
 */
@WebServlet("/adminDeleteInvite.ma")
public class AdminDeleteInvite extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDeleteInvite() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<PetSitterMatchingJoin> psmList = new MatchingService().deletedPetSitter();
		
		request.setAttribute("psmList",psmList);
		
		RequestDispatcher view = request.getRequestDispatcher("views/petsitterreservation/deleteInvitePage.jsp");
		
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
