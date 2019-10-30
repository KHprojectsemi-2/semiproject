package petSitter.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import petSitter.model.service.PetSitterService;
import petSitter.model.vo.PetSitter;

/**
 * Servlet implementation class ApprovePetSitterServlet
 */
@WebServlet("/approve.ps")
public class ApprovePetSitterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApprovePetSitterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("지원서 승인 페이지");
		
		String userId = request.getParameter("userId");
		System.out.println("userId" + userId);
		
		int result = new PetSitterService().approvePetSitter(userId);
		System.out.println("지원서 승인 result : " + result);

		String page = "";	// 반환할 jsp의 경로(화면에 보여줄 view)를 저장할 String
		
		if(result > 0) {
			ArrayList<PetSitter> pArr = new PetSitterService().selectList();
			System.out.println(pArr);
			System.out.println("리스트 리스트");
			
			page = "views/petSitter/petSitterApplyList.jsp";
			request.setAttribute("arr", pArr);
			
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "펫시터 승인 실패!");
		}
		// 넘어갈 view와 넘겨줄 request객체를 같이 보내려면 forwarding 처리를 해야 함
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
