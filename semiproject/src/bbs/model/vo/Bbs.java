package bbs.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Bbs implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int bId; 				// 게시판 id
	private String type; 			// 일반게시물 0, 공지게시물 1
	private String title; 			// 게시물제목
	private String content; 		// 게시물 본문
	private String body_path; 		// 파일로 저장시 본문 패스
	private String writer; 			// 게시자 id
	private String poster_name; 	// 게시자 이름
	private Date poster_date; 		// 게시 일자
	private Date end_date; 			// 게시 종료일
	private Date modify_date; 		// 게시 수정일
	private int bCount;				// 게시판 조회수
	private int attach_f; 			// 첨부여부
	private int attach_cnt; 		// 첨부 개수
	private int delete_flag; 		// 게시물 삭제여부
	private Date delete_date; 		// 게시물 삭제일
	private String memo; 			// 게시물 삭제사유

	public Bbs() {
	}

	public Bbs(int bId, String type, String title, String content, String body_path, String writer, String poster_name,
			Date poster_date, Date end_date, Date modify_date, int bCount, int attach_f, int attach_cnt,
			int delete_flag, Date delete_date, String memo) {
		super();
		this.bId = bId;
		this.type = type;
		this.title = title;
		this.content = content;
		this.body_path = body_path;
		this.writer = writer;
		this.poster_name = poster_name;
		this.poster_date = poster_date;
		this.end_date = end_date;
		this.modify_date = modify_date;
		this.bCount = bCount;
		this.attach_f = attach_f;
		this.attach_cnt = attach_cnt;
		this.delete_flag = delete_flag;
		this.delete_date = delete_date;
		this.memo = memo;
	}

	public int getbId() {
		return bId;
	}

	public void setbId(int bId) {
		this.bId = bId;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
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

	public String getBody_path() {
		return body_path;
	}

	public void setBody_path(String body_path) {
		this.body_path = body_path;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getPoster_name() {
		return poster_name;
	}

	public void setPoster_name(String poster_name) {
		this.poster_name = poster_name;
	}

	public Date getPoster_date() {
		return poster_date;
	}

	public void setPoster_date(Date poster_date) {
		this.poster_date = poster_date;
	}

	public Date getEnd_date() {
		return end_date;
	}

	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}

	public Date getModify_date() {
		return modify_date;
	}

	public void setModify_date(Date modify_date) {
		this.modify_date = modify_date;
	}

	public int getbCount() {
		return bCount;
	}

	public void setbCount(int bCount) {
		this.bCount = bCount;
	}

	public int getAttach_f() {
		return attach_f;
	}

	public void setAttach_f(int attach_f) {
		this.attach_f = attach_f;
	}

	public int getAttach_cnt() {
		return attach_cnt;
	}

	public void setAttach_cnt(int attach_cnt) {
		this.attach_cnt = attach_cnt;
	}

	public int getDelete_flag() {
		return delete_flag;
	}

	public void setDelete_flag(int delete_flag) {
		this.delete_flag = delete_flag;
	}

	public Date getDelete_date() {
		return delete_date;
	}

	public void setDelete_date(Date delete_date) {
		this.delete_date = delete_date;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	@Override
	public String toString() {
		return "Bbs [bId=" + bId + ", type=" + type + ", title=" + title + ", content=" + content + ", body_path="
				+ body_path + ", writer=" + writer + ", poster_name=" + poster_name + ", poster_date=" + poster_date
				+ ", end_date=" + end_date + ", modify_date=" + modify_date + ", bCount=" + bCount + ", attach_f="
				+ attach_f + ", attach_cnt=" + attach_cnt + ", delete_flag=" + delete_flag + ", delete_date="
				+ delete_date + ", memo=" + memo + "]";
	}

	
	
}
