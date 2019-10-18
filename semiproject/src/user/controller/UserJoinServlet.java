package user.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String chkGender = request.getParameter("chkGender");
		int year = Integer.valueOf(request.getParameter("birth_year"));
		int month = Integer.valueOf(request.getParameter("birth_month"));
		int day = Integer.valueOf(request.getParameter("birth_day"));
		GregorianCalendar date = new GregorianCalendar(year,month,day);
		Date birth = new Date(date.getTimeInMillis());
		String userEmail = request.getParameter("userEmail");
		String userPhone = request.getParameter("userPhone");
		String userAddress = request.getParameter("userAddress") + request.getParameter("userAddress2");
		
		System.out.println(userId+ userPwd +userName +chkGender +userEmail+birth +userPhone +userAddress);
		User user = new User();
		
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
