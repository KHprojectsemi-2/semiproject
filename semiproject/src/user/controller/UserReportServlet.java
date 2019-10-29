package user.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import user.model.service.UserService;
import user.model.vo.Report;

/**
 * Servlet implementation class UserReportServlet
 */
@WebServlet("/report.me")
public class UserReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserReportServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("reportId");
		String reportMsg = request.getParameter("msg");
		int day = Integer.valueOf(request.getParameter("limitDate"));	
	    Calendar calendar = new GregorianCalendar(Locale.KOREA);
	    int nYear = calendar.get(Calendar.YEAR);
	    int nMonth = calendar.get(Calendar.MONTH);
	    int nDay = calendar.get(Calendar.DAY_OF_MONTH);    
		GregorianCalendar date = new GregorianCalendar(nYear,nMonth,nDay);
		Date limitDate = new Date(date.getTimeInMillis()+(day*24*60*60*1000));
		
		UserService dao = new UserService();
		Report report = new Report(userId,reportMsg);
		int result = dao.insertReport(report,limitDate);
		response.setContentType("application/json;");

		new Gson().toJson(result,response.getWriter());
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
