package user.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.GregorianCalendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.model.service.UserService;
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
		String userAddress = request.getParameter("userAddress") +" "+request.getParameter("userAddress2");
		
		System.out.println(userId+ userPwd +userName +userGender +userEmail+userbirth +userPhone +userAddress);
		User user = new User(userId,userPwd,userName,userGender,userEmail,userbirth,userPhone,userAddress);

		int result = new UserService().insertUser(user);
		
		if(result>0) {
			response.sendRedirect("index.jsp"); 
			
		}else {
			RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
			request.setAttribute("msg", "공지사항 등록 실패!");
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
