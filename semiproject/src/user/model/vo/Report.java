package user.model.vo;

import java.io.Serializable;

public class Report implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3803489315329448874L;
	private int reportNo;
	private String userId;
	private String reportMsg;
	private String status;
	
	
	public Report() {
		super();
	}
	
	
	
	public Report(String userId, String reportMsg) {
		super();
		this.userId = userId;
		this.reportMsg = reportMsg;
	}



	public Report(int reportNo, String userId, String reportMsg, String status) {
		super();
		this.reportNo = reportNo;
		this.userId = userId;
		this.reportMsg = reportMsg;
		this.status = status;
	}

	public int getReportNo() {
		return reportNo;
	}

	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getReportMsg() {
		return reportMsg;
	}

	public void setReportMsg(String reportMsg) {
		this.reportMsg = reportMsg;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Report [reportNo=" + reportNo + ", userId=" + userId + ", reportMsg=" + reportMsg + ", status=" + status
				+ "]";
	}

	
	
}
