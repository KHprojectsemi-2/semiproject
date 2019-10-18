package petSitter.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import petSitter.model.service.PetSitterService;
import petSitter.model.vo.PetSitter;
import user.model.vo.User;

/**
 * Servlet implementation class PetSitterApplyServlet
 */
@WebServlet("/petSitterApply.ap")
public class PetSitterApplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public PetSitterApplyServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 요청시 한글이 있을 경우 인코딩 처리
		request.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		User user = new User();
		
		// 선택된 radio value 값 변수에 저장시켜줘
		String userId = request.getParameter("id");
//		int grade = Integer.valueOf(request.getParameter("grade"));
		String residence = request.getParameter("residence");
		String job = request.getParameter("job");
		String withFam = request.getParameter("family");
		String withPet = request.getParameter("pet");
		String canLarge = request.getParameter("big");
		String canMedic = request.getParameter("medicine");
		String canOld = request.getParameter("old");
		String canSick = request.getParameter("patient");
		String isLicense = request.getParameter("certificate");
//		String chkResume = request.getParameter("chkResume");

//		// jsp에서 선택한 값 잘 넘어옴!!!!!!!!!!!
		System.out.println("id : " + userId);
//		out.println("grade : " + grade);
		System.out.println(residence);
		System.out.println(job);
		System.out.println(withFam);
		System.out.println(withPet);
		System.out.println(canLarge);
		System.out.println(canMedic);
		System.out.println(canOld);
		System.out.println(canSick);
		System.out.println(isLicense);
//		out.println(chkResume);
		
		
		HttpSession session = request.getSession(); // request객체가 session 객체를 만드는 메소드를 지니고 있다.
		
		PetSitter p = new PetSitter(userId, residence, job, withFam, withPet, canLarge, canMedic, canOld, canSick, isLicense);
		
		// insert이기 때문에 int 값으로 받아줌
		int result = new PetSitterService().applyPetSitter(p);
		System.out.println("result : " + result);
		
		// 4. 받은 결과에 따라 성공/실패에 따른 페이지 내보내기
		String page = "";	// 반환할 jsp의 경로(화면에 보여줄 view)를 저장할 String
		
		if(result > 0) {	// 성공했을 때
			page = "/index.jsp";
		}else {	// 실패했을 때
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "지원서 제출 실패!");
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
