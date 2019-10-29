package board.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class ReportBoard implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -3891704356104666327L;
	
	private int boardNo;		// 글번호
	private String userId;		// 사용자id(여기서는 작성자가되겠지)
	private String boardType;	// 게시판 타입
	private String title;		// 제목
	private String content;		// 내용
	private Date createDate;	// 생성날짜
	private String boardStatus;	// 게시판 상태 (y이면 살아있는거 n이면 삭제된거)
	private String repUser;		// 신고대상(대상 아이디)
	private String repType;		// 신고대상 타입(견주 or 펫시터)
	private String repStatus;	// 신고 상태 (관리자가보고 처리했는지 판단 y or n)
	
	public ReportBoard() {}

	public ReportBoard(int boardNo, String userId, String boardType, String title, String content, Date createDate,
			String boardStatus, String repUser, String repType, String repStatus) {
		this.boardNo = boardNo;
		this.userId = userId;
		this.boardType = boardType;
		this.title = title;
		this.content = content;
		this.createDate = createDate;
		this.boardStatus = boardStatus;
		this.repUser = repUser;
		this.repType = repType;
		this.repStatus = repStatus;
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

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getBoardStatus() {
		return boardStatus;
	}

	public void setBoardStatus(String boardStatus) {
		this.boardStatus = boardStatus;
	}

	public String getRepUser() {
		return repUser;
	}

	public void setRepUser(String repUser) {
		this.repUser = repUser;
	}

	public String getRepType() {
		return repType;
	}

	public void setRepType(String repType) {
		this.repType = repType;
	}

	public String getRepStatus() {
		return repStatus;
	}

	public void setRepStatus(String repStatus) {
		this.repStatus = repStatus;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ReportBoard [boardNo=" + boardNo + ", userId=" + userId + ", boardType=" + boardType + ", title="
				+ title + ", content=" + content + ", createDate=" + createDate + ", boardStatus=" + boardStatus
				+ ", repUser=" + repUser + ", repType=" + repType + ", repStatus=" + repStatus + "]";
	}
	
}
