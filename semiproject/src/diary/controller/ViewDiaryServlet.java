package diary.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import diary.model.service.DiaryService;
import diary.model.vo.Diary;

/**
 * Servlet implementation class ViewDiaryServlet
 */
@WebServlet("/view.dr")
public class ViewDiaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewDiaryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

//    grade만 추가하는걸로,,
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 별점 불러오기
//		int number = Integer.parseInt(request.getParameter("number"));
//		System.out.println(number);
//		
//		int result = new DiaryService().insertGrade(new Diary(number));
		
		System.out.println("다이어리 뷰");
		int dNo = Integer.parseInt(request.getParameter("num"));
		System.out.println("다이어리 num : " + dNo);
		
		Diary diary = new DiaryService().selectDiary(dNo);
		
		RequestDispatcher view = null;
		
		if(diary != null) {
			view = request.getRequestDispatcher("views/diary/diaryView.jsp");
			request.setAttribute("diary", diary);
			System.out.println("지원서 확인 서블릿");
		}else {
			view = request.getRequestDispatcher("views/common/errorPage.jsp");
			request.setAttribute("msg", "조회 실패");
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
