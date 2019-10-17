
package user.model.vo;

import java.sql.Date;
import java.io.Serializable;

public class User implements Serializable{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 7465705402501207204L;
	
	private String userId;
	private int userNo;
	private String userName;
	private String userPwd;
	private Date userBirth;
	private String userEmail;
	private String userPhone;
	private String userAddress;
	private String userImage;
	private int reported;
	private Date joinDate;
	private Date latestDate;
	private String userStatus;
	
	
	public User() {
		super();
	}
	
	
	
	public User(String userId, String userPwd) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
	}


	public User(String userId, int userNo, String userName, String userPwd, Date userBirth, String userEmail,
			String userPhone, String userAddress, String userImage, int reported, Date joinDate, Date latestDate,
			String userStatus) {
		super();
		this.userId = userId;
		this.userNo = userNo;
		this.userName = userName;
		this.userPwd = userPwd;
		this.userBirth = userBirth;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.userAddress = userAddress;
		this.userImage = userImage;
		this.reported = reported;
		this.joinDate = joinDate;
		this.latestDate = latestDate;
		this.userStatus = userStatus;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public Date getUserBirth() {
		return userBirth;
	}
	public void setUserBirth(Date userBirth) {
		this.userBirth = userBirth;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserImage() {
		return userImage;
	}
	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}
	public int getReported() {
		return reported;
	}
	public void setReported(int reported) {
		this.reported = reported;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	public Date getLatestDate() {
		return latestDate;
	}
	public void setLatestDate(Date latestDate) {
		this.latestDate = latestDate;
	}
	public String getUserStatus() {
		return userStatus;
	}
	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userNo=" + userNo + ", userName=" + userName + ", userPwd=" + userPwd
				+ ", UserBirth=" + userBirth + ", userEmail=" + userEmail + ", userPhone=" + userPhone
				+ ", userAddress=" + userAddress + ", userImage=" + userImage + ", reported=" + reported + ", joinDate="
				+ joinDate + ", latestDate=" + latestDate + ", userStatus=" + userStatus + "]";
	}
	
}
