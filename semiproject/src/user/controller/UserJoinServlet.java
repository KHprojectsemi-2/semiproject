package user.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.GregorianCalendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.model.service.PetService;
import user.model.service.UserService;
import user.model.vo.Pet;
import user.model.vo.User;

/**
 * Servlet implementation class UserJoinServlet
 */
@WebServlet("/join.me")
public class UserJoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserJoinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8"); // 로그인에서는 필요없음(한글 쓸일 없으니까)
		response.setContentType("text/html; charset=UTF-8");

		// 유저 부분
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String userName = request.getParameter("userName");
		String userGender = request.getParameter("chkGender");
		int year = Integer.valueOf(request.getParameter("birth_year"));
		int month = (Integer.valueOf(request.getParameter("birth_month"))) - 1;
		int day = Integer.valueOf(request.getParameter("birth_day"));
		GregorianCalendar date = new GregorianCalendar(year,month,day);
		Date userbirth = new Date(date.getTimeInMillis());
		String userEmail = request.getParameter("userEmail");
		String userPhone = request.getParameter("userPhone");
		String userAddress = request.getParameter("postcode") +" "+request.getParameter("userAddress");
		
		///////

		User user = new User(userId,userPwd,userName,userGender,userEmail,userbirth,userPhone,userAddress);
		System.out.println(user);
		int result = new UserService().insertUser(user);
		
		// 펫부분 		
		Pet pet = null;
		Pet pet2 = null;
		RequestDispatcher view = null;
		if(request.getParameter("petName")!=null) {
			String petName = request.getParameter("petName");
			String chkNeutral = request.getParameter("chkNeutral");
			String petGender = request.getParameter("petGender");
			String petWeight = request.getParameter("petSize");
			String petKind = request.getParameter("petKind");
			int petAge = Integer.valueOf(request.getParameter("petAge"));
			pet = new Pet(userId,petName,petWeight,petKind,petGender,chkNeutral,petAge);
			System.out.println(pet);
			int petRes = new PetService().insertPet(pet);
			
			if(petRes<=0) {
				view = request.getRequestDispatcher("views/common/errorPage.jsp");
				request.setAttribute("msg", "펫 추가 실패!");
			}
			
			if(request.getParameter("petName2")!=null) {
				
				String petName2 = request.getParameter("petName2");
				String chkNeutral2 = request.getParameter("chkNeutral2");
				String petGender2 = request.getParameter("petGender2");
				String petWeight2 = request.getParameter("petSize2");
				String petKind2 = request.getParameter("petKind2");
				int petAge2 = Integer.valueOf(request.getParameter("petAge"));
				pet2 = new Pet(userId,petName2,petWeight2,petKind2,petGender2,chkNeutral2,petAge2);
				System.out.println(pet2);
				int petRes2 = new PetService().insertPet(pet2);
				
				if(petRes2<=0) {
					view = request.getRequestDispatcher("views/common/errorPage.jsp");
					request.setAttribute("msg", "펫2 추가 실패!");
				}
			}
		}
		
		if(result>0) {
			PrintWriter out = response.getWriter();
			out.println("<script>alert('회원가입 완료!'); location.href='views/user/LoginPage.jsp';</script>"); 
			out.flush();

			//response.sendRedirect("views/user/LoginPage.jsp"); 
			
		}else {
			view = request.getRequestDispatcher("views/common/errorPage.jsp");
			request.setAttribute("msg", "회원가입 실패!");
			view.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
