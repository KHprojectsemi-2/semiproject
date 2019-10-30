package matching.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class MatchingUserJoin implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int match_No;
	private String sitter_Id;
	private String user_Id;
	private String isHome;
	private String isrest;
	private Date careDate;
	private int price;
	private String wantToSay;
	private String special_Note;
	private String thumbnail;
	private String regStatus;
	private String countPet;
	private int userNo;
	private String userName;
	private String userEmail;
	private String userPhone;
	private String userAddress;
	private int reported;
	
	
	
	public MatchingUserJoin() {
		super();
	}



	public MatchingUserJoin(int match_No, String sitter_Id, String user_Id, String isHome, String isrest, Date careDate,
			int price, String wantToSay, String special_Note, String thumbnail, String regStatus, String countPet,
			int userNo, String userName, String userEmail, String userPhone, String userAddress, int reported) {
		super();
		this.match_No = match_No;
		this.sitter_Id = sitter_Id;
		this.user_Id = user_Id;
		this.isHome = isHome;
		this.isrest = isrest;
		this.careDate = careDate;
		this.price = price;
		this.wantToSay = wantToSay;
		this.special_Note = special_Note;
		this.thumbnail = thumbnail;
		this.regStatus = regStatus;
		this.countPet = countPet;
		this.userNo = userNo;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.userAddress = userAddress;
		this.reported = reported;
	}



	public int getMatch_No() {
		return match_No;
	}



	public void setMatch_No(int match_No) {
		this.match_No = match_No;
	}



	public String getSitter_Id() {
		return sitter_Id;
	}



	public void setSitter_Id(String sitter_Id) {
		this.sitter_Id = sitter_Id;
	}



	public String getUser_Id() {
		return user_Id;
	}



	public void setUser_Id(String user_Id) {
		this.user_Id = user_Id;
	}



	public String getIsHome() {
		return isHome;
	}



	public void setIsHome(String isHome) {
		this.isHome = isHome;
	}



	public String getIsrest() {
		return isrest;
	}



	public void setIsrest(String isrest) {
		this.isrest = isrest;
	}



	public Date getCareDate() {
		return careDate;
	}



	public void setCareDate(Date careDate) {
		this.careDate = careDate;
	}



	public int getPrice() {
		return price;
	}



	public void setPrice(int price) {
		this.price = price;
	}



	public String getWantToSay() {
		return wantToSay;
	}



	public void setWantToSay(String wantToSay) {
		this.wantToSay = wantToSay;
	}



	public String getSpecial_Note() {
		return special_Note;
	}



	public void setSpecial_Note(String special_Note) {
		this.special_Note = special_Note;
	}



	public String getThumbnail() {
		return thumbnail;
	}



	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}



	public String getRegStatus() {
		return regStatus;
	}



	public void setRegStatus(String regStatus) {
		this.regStatus = regStatus;
	}



	public String getCountPet() {
		return countPet;
	}



	public void setCountPet(String countPet) {
		this.countPet = countPet;
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



	public int getReported() {
		return reported;
	}



	public void setReported(int reported) {
		this.reported = reported;
	}



	@Override
	public String toString() {
		return "MatchingUserJoin [match_No=" + match_No + ", sitter_Id=" + sitter_Id + ", user_Id=" + user_Id
				+ ", isHome=" + isHome + ", isrest=" + isrest + ", careDate=" + careDate + ", price=" + price
				+ ", wantToSay=" + wantToSay + ", special_Note=" + special_Note + ", thumbnail=" + thumbnail
				+ ", regStatus=" + regStatus + ", countPet=" + countPet + ", userNo=" + userNo + ", userName="
				+ userName + ", userEmail=" + userEmail + ", userPhone=" + userPhone + ", userAddress=" + userAddress
				+ ", reported=" + reported + "]";
	}
	
	
}
