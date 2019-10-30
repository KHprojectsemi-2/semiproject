package matching.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import matching.model.service.MatchingService;

/**
 * Servlet implementation class RecoveryInvite
 */
@WebServlet("/recoveryInvite.ma")
public class RecoveryInvite extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecoveryInvite() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int matchno = Integer.valueOf(request.getParameter("matchno"));
		
		int result = new MatchingService().recoveryInvite(matchno);
		
		String page="";
		
		if(result>0){
			response.sendRedirect("index.jsp");
			return;
		}else{
			page="views/common/errorPage.jsp";
			request.setAttribute("msg", "실패");
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
