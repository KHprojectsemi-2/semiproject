package diary.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;

import common.MyFileRenamePolicy;
import diary.model.service.DiaryService;
import diary.model.vo.Diary;
import diary.model.vo.JoinAttach;
import user.model.vo.User;

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

		
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
			// 1_1. 전송 파일 용량 제한 : 10Mbyte로 제한하는 경우
			int maxSize = 1024 * 1024 * 10;	//바이트 단위(바이트 > 키로바이트 > 메가바이트)
			
			// 1_2. 웹 서버 컨테이너 경로 추출함
			String root = request.getSession().getServletContext().getRealPath("/");	// 넘어오는 파일 경로(web폴더 경로)
//			System.out.println("파일 경로 : " + root);
			
			// 1_3. 파일들 저장 경로(web/thrumbnail_uploadFiles/)
			String savePath = root+"diary_uploadFiles/";
			
			//2_1. 1번 작업에서 나온 결과(저장경로, 용량제한), 인코딩, 파일명 변환 기능이 있는 클래스들을 지정하여
			//		MultipartRequest의 참조변수 multiReqeust 선언
			//		--> 선언하는 순간에 MyFileRenamePolicy의 rename메소드가 실행되면서 rename된 파일이 폴더에 저장
			MultipartRequest multiRequest = new MultipartRequest(request,savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			//2_2. DB에 저장하기 위해 change_name과 origin_name 각각의 리스트들을 만들어 주는 작업
			
			// 다중 파일을 묶어서 업로드(다중파일업로드) 하기 때문에 컬렉션을 사용
			// 저장한 파일의 이름을 저장할 ArrayList를 생성하자
			ArrayList<String> saveFiles = new ArrayList<String>();
			
			// 원본 파일의 이름을 저장할 ArrayList를 생성하자
			ArrayList<String> originFiles = new ArrayList<String>();
			
			// getFileNames() - 폼에서 전송된 파일 리스트들의 name들을 반환한다.
			Enumeration<String> files = multiRequest.getFileNames();
			while(files.hasMoreElements()) {
				
				// 전송 순서 역순으로 파일을 가져온다.
				String name = files.nextElement();
				
				if(multiRequest.getFilesystemName(name) != null) {
					// getFilesystemName() - MyRenamePolicy의 rename 메소드에서 작성한대로 rename된 파일명
					saveFiles.add(multiRequest.getFilesystemName(name));
					//getOriginalFileName() - 실제 사용자가 업로드 할 때의 파일 명
					originFiles.add(multiRequest.getOriginalFileName(name));
					System.out.println("사진 : " + multiRequest.getFilesystemName(name));

				}
			}

			
			
			String userId = multiRequest.getParameter("userId");
			System.out.println("아이디 : " + userId);
			
			int matchNo = Integer.valueOf(multiRequest.getParameter("matching"));
			System.out.println("매칭 넘버 : " + matchNo);
			
			// 배변 확인 체크박스를 리스트로 받아서 가져오기...
			// 체크가 안되면 어떻게 하지??
			String irr1 = multiRequest.getParameter("list1");
			String list1 = irr1;
			System.out.println("배변 : " + list1);
			
			// 산책 확인
			String irr2 = multiRequest.getParameter("list2");
			String list2 = irr2;
			System.out.println("산책 : " + list2);
			
			// 산책 확인
			String irr3 = multiRequest.getParameter("list3");
			String list3 = irr3;
			System.out.println("투약 : " + list3);
			
			// 산책 확인
			String irr4 = multiRequest.getParameter("list4");
			String list4 = irr4;
			System.out.println("요청사항 : " + list4);
			
			if(list1 == null) {
				list1 = "n";
				System.out.println(list1 + "는 null이야");
			}
			if(list2 == null) {
				list2 = "n";
				System.out.println(list2 + "는 null이야");
			}
			if(list3 == null) {
				list3 = "n";
				System.out.println(list3 + "는 null이야");
			}
			if(list4 == null) {
				list4 = "n";
				System.out.println(list4 + "는 null이야");
			}
			
			System.out.println("최종 list1 : " + list1);
			System.out.println("최종 list2 : " + list2);
			System.out.println("최종 list3 : " + list3);
			System.out.println("최종 list4 : " + list4);
			
			String content = multiRequest.getParameter("review");
			System.out.println("리뷰");
			System.out.println(content);
			
			// 3_1. 파일 외에 게시판 제목, 내용, 작성자 회원 번호 받아오기
			String bwriter = String.valueOf(((User)request.getSession().getAttribute("loginUser")).getUserNo());
			
			// 3_2. DB에 보낼 Board 객체와 Attachment 리스트 생성
			Diary d = new Diary();
			d.setMatchNo(matchNo);
			d.setDiaryContent(content);
			d.setIsToilet(list1);
			d.setIsWalk(list2);
			d.setIsMedic(list3);
			d.setChkNeeds(list4);
			
			ArrayList<JoinAttach> fileList = new ArrayList<JoinAttach>();
			// 전송 순서 역순으로 파일이 list에 저장되어 있기 때문에 반복문을 역으로 수행함
			for(int i=originFiles.size()-1 ; i>=0 ; i--) {
				JoinAttach at = new JoinAttach();
				at.setFilePath(savePath);
				at.setOriginName(originFiles.get(i));
				at.setChangeName(saveFiles.get(i));
				
				// 타이틀 이미지가 originFiles에서의 마지막 인덱스이기 때문에 다음과 같이 조건을 준 다음에 level을 0으로 지정
				if(i == originFiles.size()-1) {
					at.setFileLevel(0); 	// 대표 이미지의 fileLevel 값은 0
				}else {
					at.setFileLevel(1); 	// 대표 이미지를 제외한 이미지의 fileLevel 값은 1
				}
				
				fileList.add(at);
			}
			
			System.out.println(fileList);
			// 이렇게 하면 DB를 다녀올 준비가 끝남
			
			int result = new DiaryService().insertDiary(d, fileList);
			
			if(result > 0) {
				response.sendRedirect("list.dr");
			}else {
				//실패시 저장된 사진 삭제
				for(int i=0;i<saveFiles.size();i++) {
					//파일 시스템에 저장된 이름으로 파일 객체 생성함
					File failedFile = new File(savePath + saveFiles.get(i));
					failedFile.delete();
				}
				
				request.setAttribute("msg", "사진 게시판 등록 실패!!");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			}
			// 여기까지 테스트 해보고 잘 되면 이제 사진 게시판 상세보기를 하자!! thumbnailListView.jsp로 돌아가장!
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
