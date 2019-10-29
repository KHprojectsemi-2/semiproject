package petSitter.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import petSitter.model.service.PetSitterService;
import petSitter.model.vo.PetSitter;

/**
 * Servlet implementation class DetailPetSitterServlet
 */
@WebServlet("/detail.ps")
public class DetailPetSitterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailPetSitterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("디테일 서블릿");
		int pNo = Integer.parseInt(request.getParameter("num"));
		System.out.println("디테일 : " + pNo);
		
		PetSitter petSitter = new PetSitterService().selectPetSitter(pNo);
		
		RequestDispatcher view = null;
		
		if(petSitter != null) {
			view = request.getRequestDispatcher("views/petSitter/petSitterDetailView.jsp");
			request.setAttribute("petSitter", petSitter);
			System.out.println("지원서 확인 서블릿");
		}else {
			view = request.getRequestDispatcher("views/common/errorPage.jsp");
			request.setAttribute("msg", "조회 실패");
		}
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
