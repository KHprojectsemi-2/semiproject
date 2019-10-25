package user.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import user.model.service.UserService;
import user.model.vo.User;


@WebServlet("/findId.me")
public class FindIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindIdServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String userName = request.getParameter("userName");
		String userEmail = request.getParameter("userEmail");
		int year = Integer.valueOf(request.getParameter("year"));
		int month = (Integer.valueOf(request.getParameter("month"))) - 1;
		int day = Integer.valueOf(request.getParameter("day"));
		GregorianCalendar date = new GregorianCalendar(year,month,day);
		Date userBirth = new Date(date.getTimeInMillis());
		
		User user = new User(userName,userEmail,userBirth);
		
		String userId = new UserService().findUserId(user);
		
		System.out.println("반환된 아이디 :"+userId);
		String resultId="";
		for(int i=0;i<userId.length();i++) {
			if(i<userId.length()-3) {
				resultId += userId.charAt(i);
			}
			else {
				resultId += '*';
			}
		}
		response.setContentType("application/json;");
		new Gson().toJson(resultId,response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
