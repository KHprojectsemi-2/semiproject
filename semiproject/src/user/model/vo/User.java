
package user.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class User implements Serializable{
	
	
	private static final long serialVersionUID = 7465705402501207204L;
	
	private String userId;
	private int userNo;
	private String userPwd;
	private String userName;
	private String userGender;
	private String userEmail;
	private Date userBirth;
	private String userPhone;
	private String userPostcode;
	private String userAddress;
	private String userImage;
	private int reported;
	private Date joinDate;
	private Date latestDate;
	private String userStatus;
	
	
	public User() {
		super();
	}

	public User(String userId, String userName, String userEmail, String userPhone, String userAddress,
			String userImage) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.userAddress = userAddress;
		this.userImage = userImage;
	}


	public User(String userId, String userName, String userEmail, String userPhone, String userPostcode,
			String userAddress, String userImage) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.userPostcode = userPostcode;
		this.userAddress = userAddress;
		this.userImage = userImage;
	}

	// 아이디 찾기할 때 필요한 생성자
	public User(String userName, String userEmail, Date userBirth) {
		super();
		this.userName = userName;
		this.userEmail = userEmail;
		this.userBirth = userBirth;
	}

	// 비밀번호 찾기할 때 필요한 생성자
	public User(String userId, String userName, String userEmail) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userEmail = userEmail;
	}


	// 로그인할 때 필요한 생성자
	public User(String userId, String userPwd) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
	}

	// 가입할 때 필요한 생성자
	public User(String userId, String userPwd, String userName, String userGender, String userEmail, Date userBirth,
			String userPhone,String userPostcode ,String userAddress) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userGender = userGender;
		this.userEmail = userEmail;
		this.userBirth = userBirth;
		this.userPhone = userPhone;
		this.userPostcode = userPostcode;
		this.userAddress = userAddress;
	}
	

	public User(String userId, int userNo, String userPwd, String userName, String userGender, String userEmail,
			Date userBirth, String userPhone, String userPostcode, String userAddress, String userImage, int reported,
			Date joinDate, Date latestDate, String userStatus) {
		super();
		this.userId = userId;
		this.userNo = userNo;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userGender = userGender;
		this.userEmail = userEmail;
		this.userBirth = userBirth;
		this.userPhone = userPhone;
		this.userPostcode = userPostcode;
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

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public Date getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(Date userBirth) {
		this.userBirth = userBirth;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}


	public String getUserPostcode() {
		return userPostcode;
	}

	public void setUserPostcode(String userPostcode) {
		this.userPostcode = userPostcode;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "User [userId=" + userId + ", userNo=" + userNo + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", userGender=" + userGender + ", userEmail=" + userEmail + ", userBirth=" + userBirth
				+ ", userPhone=" + userPhone + ", userPostcode=" + userPostcode + ", userAddress=" + userAddress
				+ ", userImage=" + userImage + ", reported=" + reported + ", joinDate=" + joinDate + ", latestDate="
				+ latestDate + ", userStatus=" + userStatus + "]";
	}


	
}
