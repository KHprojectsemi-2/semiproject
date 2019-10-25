package board.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Board implements Serializable{	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int boardNo;
	private String userId;
	private String boardType;	//1 : FAQ	2 : 문의하기	3: 신고하기
	private String title;
	private String content;
	private Date createDate;
	private String boardStatus;
	
	public Board() {}
	
	public Board(int boardNo, String userId, String boardType, String title, String content, Date createDate, String boardStatus) {		
		this.boardNo = boardNo;
		this.userId = userId;
		this.boardType = boardType;
		this.title = title;
		this.content = content;
		this.createDate = createDate;
		this.boardStatus = boardStatus;
	}	
	
	public Board(int boardNo, String userId, String title, String content, Date createDate) {
		this.boardNo = boardNo;
		this.userId = userId;
		this.title = title;
		this.content = content;
		this.createDate = createDate;
	}	// 사용자가 FAQ볼때 필요한 생성자

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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", userId=" + userId + ", boardType=" + boardType + ", title=" + title
				+ ", content=" + content + ", createDate=" + createDate + ", boardStatus=" + boardStatus + "]";
	}
	
}
