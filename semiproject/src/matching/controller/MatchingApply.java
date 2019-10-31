package matching.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;

import common.MyFileRenamePolicy;
import matching.model.service.MatchingService;
import matching.model.vo.Matching;
import petSitter.model.service.PetSitterService;
import user.model.service.JoinAttachService;
import user.model.vo.JoinAttach;

/**
 * Servlet implementation class MatchingApply
 */
@WebServlet("/matchingApply.ma")
public class MatchingApply extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MatchingApply() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 System.out.println("서블릿 통과");
	      if(ServletFileUpload.isMultipartContent(request)) {
	         
	         System.out.println("멀티리퀘스트 조건 통과");
	         
	         request.setCharacterEncoding("UTF-8"); // 로그인에서는 필요없음(한글 쓸일 없으니까)
	         response.setContentType("text/html; charset=UTF-8");

	         int maxSize = 1024 * 1024 * 10; // 바이트 단위(바이트 > 키로바이트 > 메가바이트)

	         String root = request.getSession().getServletContext().getRealPath("/"); // 넘어오는 파일 경로

	         String savePath = root + "join_uploadFiles/";

	         MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8",
	               new MyFileRenamePolicy());

	         // 저장한 파일의 이름을 저장할 ArrayList를 생성하자
	         ArrayList<String> saveFiles = new ArrayList<String>();

	         // 원본 파일의 이름을 저장할 ArrayList를 생성하자
	         ArrayList<String> originFiles = new ArrayList<String>();

	         // getFileNmaes() - 폼에서 전송된 파일 리스트들의 name들을 반환한다.
	         Enumeration<String> files = multiRequest.getFileNames();

	         while (files.hasMoreElements()) {
	            // 전송 순서 역순으로 파일을 가져온다.
	            String name = files.nextElement();

	            if (multiRequest.getFilesystemName(name) != null) {
	               // getFilesystemName() - MyRenamePolicy의 rename 메소드에서 작성한대로 rename된 파일명
	               saveFiles.add(multiRequest.getFilesystemName(name));
	               // getOriginalFileName() - 실제 사용자가 업로드 할 때의 파일 명
	               originFiles.add(multiRequest.getOriginalFileName(name));

	               // 확인용
	               System.out.println(multiRequest.getFilesystemName(name));
	               System.out.println(multiRequest.getOriginalFileName(name));
	            }
	         }

	         ArrayList<JoinAttach> fileList = new ArrayList<JoinAttach>();
	         // 전송 순서 역순으로 파일이 list에 저장되어 있기 때문에 반복문을 역으로 수행함
	         for (int i = originFiles.size() - 1; i >= 0; i--) {
	            JoinAttach at = new JoinAttach();
	            at.setFilePath(savePath);
	            at.setOriginName(originFiles.get(i));
	            at.setChangeName(saveFiles.get(i));
	            at.setFileLevel(0);

/*		            // 타이틀 이미지가 originFiles에서의 마지막 인덱스이기 때문에 다음과 같이 조건을 준 다음에 level을 0으로 지정
	            if (i == originFiles.size() - 1) {
	               at.setFileLevel(0); // 대표 이미지의 fileLevel 값은 0, 유저의 사진
	            } else {
	               at.setFileLevel(1); // 대표 이미지를 제외한 이미지의 fileLevel 값은 1, 개들 사진
	            }*/

	            fileList.add(at);
	         }
	         
	         
	         String matImgName=null;

	         if(!fileList.isEmpty()){
	            System.out.println("파일리스트" + fileList);

	            /*String userImg = multiRequest.getParameter("userImg");*/	//	넘어온 매칭이미지
	            matImgName = fileList.get(0).getChangeName();

	            int fres = new JoinAttachService().insertImg(fileList);
	            System.out.println("userImg값 :"+matImgName +"조건문 진입 전");

	         }
		
		
		
		
			String sitterId = multiRequest.getParameter("sitterId");
			int price = Integer.valueOf(multiRequest.getParameter("price"));
			String wanttosay = multiRequest.getParameter("wanttosay");
			String specialnote = multiRequest.getParameter("specialnote");
	
			int result = new MatchingService().insertMatching(sitterId,price,wanttosay,specialnote,matImgName);
			
			
			if(result>0){
				response.sendRedirect("index.jsp");
			}else{
				RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
				request.setAttribute("msg", "실패 ㅎ");
				
				view.forward(request, response);
			}
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
