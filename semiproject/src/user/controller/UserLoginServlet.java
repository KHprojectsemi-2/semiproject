package user.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.model.service.UserService;
import user.model.vo.User;

/**
 * Servlet implementation class UserLoginServlet
 */
@WebServlet("/login.me")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		HttpSession sessions = request.getSession();
//		
//		sessions.invalidate();
		// 1. 전송 값에 한글이 있을 경우 인코딩 처리 해야한다. (doPost에서는 무조건 해야됨 하지만 doGet에서는 안해도 됨)
		request.setCharacterEncoding("UTF-8"); // 로그인에서는 필요없음(한글 쓸일 없으니까)
		
		// 2. 전송 값 꺼내서 변수에 기록하기 또는 객체에 저장하기
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		User user = new User(userId,userPwd);

		 User loginUser = new UserService().loginUser(user);

		 response.setContentType("text/html;charset=utf-8");
		 

		 if(loginUser != null&& loginUser.getUserStatus().equals("Y")) {	
			 //성공일 경우
			 HttpSession session = request.getSession();	
			 session.setAttribute("loginUser", loginUser);		 
			 response.sendRedirect("index.jsp");
			 
		 }else if(loginUser !=null&& loginUser.getUserStatus().equals("S")){
			 //제재 상태일 경우
			PrintWriter out = response.getWriter();
			out.println("<script>alert('회원님은 일시정지 상태입니다.'); location.href='index.jsp';</script>"); 
			out.flush();
			
		 }else if(loginUser !=null&& loginUser.getUserStatus().equals("N")){	
			 //탈퇴 상태일 경우
			PrintWriter out = response.getWriter();
			out.println("<script>alert('탈퇴한 회원입니다.'); location.href='index.jsp';</script>"); 
			out.flush();
			
		 }else {
			 //실패할 경우
			PrintWriter out = response.getWriter();
			out.println("<script>alert('아이디나 패스워드가 잘못되었습니다.'); location.href='views/user/LoginPage.jsp';</script>"); 
			out.flush();
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
