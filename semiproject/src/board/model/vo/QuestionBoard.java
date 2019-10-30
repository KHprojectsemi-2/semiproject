package board.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class QuestionBoard implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -8331213552906753314L;
	
	private int boardNo;			// 게시판 번호
	private String userId;			// 사용자 id
	private String boardType;		// 게시판 타입
	private String title;			// 제목
	private String content;			// 내용
	private Date create_date;		// 생성날짜
	private String boardStatus;		// 게시판 상태
	private String reContent;		// 답글
	private String category;		// 카테고리
	private String reBoardStatus;	// 답글 상태
	
	public QuestionBoard() {}
	
	public QuestionBoard(int boardNo, String userId, String boardType, String title, String content, Date create_date,
			String boardStatus, String reContent, String category, String reBoardStatus) {
		this.boardNo = boardNo;				// 게시판번호
		this.userId = userId;				// 사용자 id
		this.boardType = boardType;			// 게시판 타입
		this.title = title;					// 제목
		this.content = content;				// 내용
		this.create_date = create_date;		// 생성날짜
		this.boardStatus = boardStatus;		// 게시판 상태(y or n)
		this.reContent = reContent;			// 답글(관리자가 작성)
		this.category = category;			// 카테고리
		this.reBoardStatus = reBoardStatus;	// 답글 상태
	}

	public QuestionBoard(String userId, String title, String content, String category) {	
		// 문의사항 입력하기위해서(InsertBoardServlet에 필요)
		this.userId = userId;
		this.title = title;
		this.content = content;
		this.category = category;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreate_date() {
		return create_date;
	}

	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}

	public String getBoardStatus() {
		return boardStatus;
	}

	public void setBoardStatus(String boardStatus) {
		this.boardStatus = boardStatus;
	}

	public String getReContent() {
		return reContent;
	}

	public void setReContent(String reContent) {
		this.reContent = reContent;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getReBoardStatus() {
		return reBoardStatus;
	}

	public void setReBoardStatus(String reBoardStatus) {
		this.reBoardStatus = reBoardStatus;
	}

	@Override
	public String toString() {
		return "QuestionBoard [boardNo=" + boardNo + ", userId=" + userId + ", boardType=" + boardType + ", title="
				+ title + ", content=" + content + ", create_date=" + create_date + ", boardStatus=" + boardStatus
				+ ", reContent=" + reContent + ", category=" + category + ", reBoardStatus=" + reBoardStatus + "]";
	}
	
	

	
}
