package matching.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import matching.model.service.MatchingService;
import user.model.service.PetService;

/**
 * Servlet implementation class UpdateMatching
 */
@WebServlet("/UpdateMatching.ma")
public class UpdateMatching extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateMatching() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String muserid = request.getParameter("muserid");
		String sitterid = request.getParameter("sitterid");
		String rdateStr = request.getParameter("rdate");
		String mspnote = request.getParameter("mspnote");
		String msay = request.getParameter("msay");
		int mprice = Integer.valueOf(request.getParameter("mprice"));
		int petno1 = Integer.valueOf(request.getParameter("petno1"));
		int petno2 = Integer.valueOf(request.getParameter("petno2"));
		
		java.sql.Date mdate = java.sql.Date.valueOf(rdateStr);
		
		int petcount = 0;
		int resultpet1=0;
		int resultpet2=0;
		
		if(petno1==0){
			if(petno2==0){
				petcount=0;
			}else{
				petcount=1;
				resultpet2 = new PetService().updatePet(petno2);
			}
		}else{
			if(petno2==0){
				petcount=1;
				resultpet1 = new PetService().updatePet(petno1);
			}else{
				petcount=2;
				resultpet1 = new PetService().updatePet(petno1);
				resultpet2 = new PetService().updatePet(petno2);
			}
		}
		
		int insertresult = new MatchingService().insertMatching(muserid,sitterid,mspnote,msay,mprice,mdate,petcount);
		String page="";
		
		if(insertresult>0){
			response.sendRedirect("index.jsp");
			return;
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
