package user.controller;

import java.io.IOException;

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
		
		System.out.println(user);
		//3. 서비스 클래스의 해당 메소드를 실행하고, 그 처리 결과를 받음
		 User loginUser = new UserService().loginUser(user);
		 
		 System.out.println("Servlet에서..." + loginUser);
		 
		//4. 보낼 값에 한글이 있을 경우 인코딩 처리를 해야한다.
    	//   지금 내보내는 내용을 html문으로 해석해라
		 response.setContentType("text/html;charset=utf-8");
		 
		// 5. 서비스 요청에 해당하는 결과를 가지고 성공/실패에 대한 뷰 페이지(파일)을 선택해서 내보냄
		 if(loginUser != null) {	//성공일 경우
			 // 해당 클라이언트에 대한 세션 객체를 생성함
			 HttpSession session = request.getSession();	// session객체는 request에서 제공하는 getSession()이라는 메소드로 만들 수 있음
			 
			 session.setAttribute("loginUser", loginUser);
			 
			 // session객체 유지 시간 조절하기
//			 session.setMaxInactiveInterval(10); // 초 단위로 session객체 유지시간 설정
			 
			 response.sendRedirect("index.jsp");
		 }else {	//실패할 경우
			 request.setAttribute("msg", "로그인 실패");
			 
			 RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
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