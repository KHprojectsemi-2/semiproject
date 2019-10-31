package user.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import petSitter.model.service.PetSitterService;
import user.model.service.PetService;
import user.model.service.UserService;
import user.model.vo.Pet;
import user.model.vo.User;

/**
 * Servlet implementation class UserDetailServlet
 */
@WebServlet("/userDetail.bo")
public class UserDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		int userNo = Integer.valueOf(request.getParameter("userNo"));
		ArrayList<Pet> petlist = null;
		// 유저 받아오기
		User user = new UserService().selectUser(userNo);
		RequestDispatcher view;
		
		if(user!=null) {
			view = request.getRequestDispatcher("views/user/UserDetailPage.jsp");
			request.setAttribute("user", user);
			System.out.println(user);
			
			// 유저가 있다면 펫이 있는지도 확인해보자
			petlist = new PetService().selectPet(user.getUserId());
			if(petlist!=null) {
				request.setAttribute("petlist", petlist);
			}
			System.out.println(petlist);
			
			// 펫시터 등급도 확인해보자
			double grade = new PetSitterService().checkPetSitterGrade(user.getUserId());
			
			// 펫시터가 아니면 0반환.
			request.setAttribute("petSitterGrade", grade);
		

		}else {
			view = request.getRequestDispatcher("views/common/errorPage.jsp");
			request.setAttribute("msg", "회원 상세보기 실패!");
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
