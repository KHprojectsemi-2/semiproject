package user.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.GregorianCalendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;

import common.MyFileRenamePolicy;
import user.model.service.JoinAttachService;
import user.model.service.PetService;
import user.model.service.UserService;
import user.model.vo.JoinAttach;
import user.model.vo.Pet;
import user.model.vo.User;

/**
 * Servlet implementation class UserJoinServlet
 */
@WebServlet("/join.me")
public class UserJoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserJoinServlet() {
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

				// 타이틀 이미지가 originFiles에서의 마지막 인덱스이기 때문에 다음과 같이 조건을 준 다음에 level을 0으로 지정
				if (i == originFiles.size() - 1) {
					at.setFileLevel(0); // 대표 이미지의 fileLevel 값은 0, 유저의 사진
				} else {
					at.setFileLevel(1); // 대표 이미지를 제외한 이미지의 fileLevel 값은 1, 개들 사진
				}

				fileList.add(at);
			}
			
			
			String userImgName=null;
			String petImgName=null;
			String petImgName2=null;
			
			if(!fileList.isEmpty()){
				System.out.println("파일리스트" + fileList);

				String userImg = multiRequest.getParameter("userImg");
				String petImg = multiRequest.getParameter("petImg");
				String petImg2 = multiRequest.getParameter("petImg2");

				int fres = new JoinAttachService().insertImg(fileList);
				System.out.println("userImg값 :"+userImg +"조건문 진입 전");
				
				if (userImg.equals("true")) {
					userImgName = fileList.get(0).getChangeName();
					if (petImg.equals("true")) {
						petImgName = fileList.get(1).getChangeName();
						if (petImg2.equals("true")) {
							petImgName2 = fileList.get(2).getChangeName();
						}
					} else {
						if (petImg2.equals("true")) {
							petImgName2 = fileList.get(1).getChangeName();
						}
					}
				} else {
					if (petImg.equals("true")) {
						petImgName = fileList.get(0).getChangeName();
					} else {
						if (petImg2.equals("true")) {
							petImgName2 = fileList.get(0).getChangeName();
						}
					}
				}
				
			}

			// 유저 부분
			String userId = multiRequest.getParameter("userId");
			String userPwd = multiRequest.getParameter("userPwd");
			String userName = multiRequest.getParameter("userName");
			String userGender = multiRequest.getParameter("chkGender");
			int year = Integer.valueOf(multiRequest.getParameter("birth_year"));
			int month = (Integer.valueOf(multiRequest.getParameter("birth_month"))) - 1;
			int day = Integer.valueOf(multiRequest.getParameter("birth_day"));
			GregorianCalendar date = new GregorianCalendar(year, month, day);
			Date userbirth = new Date(date.getTimeInMillis());
			String userEmail = multiRequest.getParameter("userEmail");
			String userPhone = multiRequest.getParameter("userPhone");
			String userPostcode = multiRequest.getParameter("postcode");
			String userAddress = multiRequest.getParameter("userAddress");

			///////

			User user = new User(userId, userPwd, userName, userGender, userEmail, userbirth, userPhone, userPostcode,
					userAddress,userImgName);
			System.out.println(user);
			int result =  new UserService().insertUser(user);

			// 펫부분
			Pet pet = null;
			Pet pet2 = null;
			int petRes = 0;
			int petRes2 = 0;
			RequestDispatcher view = null;
			if (multiRequest.getParameter("petName") != null) {
				String petName = multiRequest.getParameter("petName");
				String chkNeutral = multiRequest.getParameter("chkNeutral");
				String petGender = multiRequest.getParameter("petGender");
				String petWeight = multiRequest.getParameter("petSize");
				String petKind = multiRequest.getParameter("petKind");
				int petAge = Integer.valueOf(multiRequest.getParameter("petAge"));
				pet = new Pet(userId, petName, petWeight, petImgName, petKind, petGender, chkNeutral, petAge);
				System.out.println(pet);
				petRes = new PetService().insertPet(pet);

				if (petRes <= 0) {
					view = request.getRequestDispatcher("views/common/errorPage.jsp");
					request.setAttribute("msg", "펫 추가 실패!");
				}

				if (multiRequest.getParameter("petName2") != null) {

					String petName2 = multiRequest.getParameter("petName2");
					String chkNeutral2 = multiRequest.getParameter("chkNeutral2");
					String petGender2 = multiRequest.getParameter("petGender2");
					String petWeight2 = multiRequest.getParameter("petSize2");
					String petKind2 = multiRequest.getParameter("petKind2");
					int petAge2 = Integer.valueOf(multiRequest.getParameter("petAge2"));
					pet2 = new Pet(userId, petName2, petWeight2, petImgName2, petKind2, petGender2, chkNeutral2, petAge2);
					System.out.println(pet2);
					petRes2 = new PetService().insertPet(pet2);

					if (petRes2 <= 0) {
						view = request.getRequestDispatcher("views/common/errorPage.jsp");
						request.setAttribute("msg", "펫2 추가 실패!");
					}
				}
			}
			// 확인 구문
			System.out.println("회원가입 : " + result);
			System.out.println("첫번째 펫입력 : " + petRes);
			System.out.println("두번째 펫입력 : " + petRes2);
			
			if (result > 0) {
				PrintWriter out = response.getWriter();
				out.println("<script>alert('회원가입 완료!'); location.href='views/user/LoginPage.jsp';</script>");
				out.flush();

			} else {
				view = request.getRequestDispatcher("views/common/errorPage.jsp");
				request.setAttribute("msg", "회원가입 실패!");
				view.forward(request, response);
			}
		}// 멀티 리퀘스트 확인 if문
			
			System.out.println("걍끝");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
