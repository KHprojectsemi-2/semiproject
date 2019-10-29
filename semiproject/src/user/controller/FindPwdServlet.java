package user.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import user.model.service.PetService;
import user.model.service.UserService;
import user.model.vo.User;

/**
 * Servlet implementation class FindPwdServlet
 */
@WebServlet("/findPwd.me")
public class FindPwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPwdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String password = randomPassword(10); // 랜덤 임시 비밀번호
		
		String userName = request.getParameter("userName");
		String userId = request.getParameter("userId");
		String userEmail = request.getParameter("userEmail");
		
		User user = new User(userId,userName,userEmail);
		int result = new UserService().findPassword(password,user);
		response.setContentType("application/json;");
		System.out.println(result);
		if(result>0) {	
			new Gson().toJson(password,response.getWriter());
		}else {
			password="fail";
			new Gson().toJson(password,response.getWriter());
		}

	}

	public String randomPassword(int length) {
		int index=0;
		char[] charSet = new char[] {
				'0','1','2','3','4','5','6','7','8','9',
				'A','B','C','D','E','F','G','H','I','J','K','L','M','N',
				'O','P','Q','R','S','T','U','V','W','X','Y','Z',
				'a','b','c','d','e','f','g','h','i','j','k','l','m','n',
				'o','p','q','r','s','t','u','v','w','x','y','z'
		};
		
		StringBuffer sb = new StringBuffer();
		for(int i=0;i<length;i++) {
			index = (int)(charSet.length * Math.random());
			sb.append(charSet[index]);
		}
		return sb.toString();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
