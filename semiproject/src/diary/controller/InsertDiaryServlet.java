package diary.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertDiaryServlet
 */
@WebServlet("/insertDiary.id")
public class InsertDiaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertDiaryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 요청시 한글이 있을 경우 인코딩 처리
		request.setCharacterEncoding("UTF-8");
		
		// 배변 확인 체크박스를 리스트로 받아서 가져오기...
		// 체크가 안되면 어떻게 하지??
		String[] irr1 = request.getParameterValues("list1");
		String list1 = irr1[0];
		System.out.println("배변 : " + list1);
		
		// 산책 확인
		String[] irr2 = request.getParameterValues("list2");
		String list2 = irr2[0];
		System.out.println("산책 : " + list2);
		
		// 산책 확인
		String[] irr3 = request.getParameterValues("list3");
		String list3 = irr3[0];
		System.out.println("투약 : " + list3);
		
		// 산책 확인
		String[] irr4 = request.getParameterValues("list4");
		String list4 = irr4[0];
		System.out.println("요청사항 : " + list4);
		
		
//		String isToilet = request.getParameter("isToilet");
//		String isWalk = request.getParameter("isWalk");
//		String isMedic = request.getParameter("isMedic");
//		String chkNeeds = request.getParameter("chkNeeds");
//		
//		String textArea = request.getParameter("review");
//		
//		System.out.println(isToilet);
//		System.out.println(isWalk);
//		System.out.println(isMedic);
//		System.out.println(chkNeeds);
//		System.out.println(textArea);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
