package matching.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

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
import user.model.service.PetService;
import user.model.vo.Pet;

/**
 * Servlet implementation class MatchngDetail
 */
@WebServlet("/matchingdetail.pe")
public class MatchingDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MatchingDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int matchno = Integer.parseInt(request.getParameter("matchno"));
		String userId = request.getParameter("userid");
		String sitterId = request.getParameter("sitterid");
		

		
		PetSitterMatchingJoin psm = new MatchingService().selectDetailMatching(matchno);
		ArrayList<Pet> pList = new PetService().selectNotMatchingPet(userId);
		ArrayList<Matching> mList = new MatchingService().selectDate(sitterId);
		
		String[] caredate = new String[mList.size()];
		/*Date[] caredate = new Date[mList.size()];*/
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		for(int i=0; i<mList.size(); i++){
			caredate[i] = sdf.format(mList.get(i).getCareDate());
		}
		
		/*for(int i=0; i<mList.size(); i++){
			caredate[i] = mList.get(i).getCareDate();
		}*/
		
		List<String> val = new ArrayList<String>();
		/*List<Date> val = new ArrayList<Date>();*/
		
		
		for(int i=0; i<caredate.length; i++){
			val.add(caredate[i]);
		}
		
		System.out.println(caredate.getClass().getName());
		
		System.out.println(caredate);
		System.out.println(val);
		request.setAttribute("psm", psm);
		request.setAttribute("pList",pList);
		request.setAttribute("val",val);
		
		RequestDispatcher view = request.getRequestDispatcher("views/petsitterreservation/matchingDetail.jsp");
	
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
