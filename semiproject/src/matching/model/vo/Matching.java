package matching.model.vo;
import java.io.Serializable;
import java.sql.Date;

public class Matching implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int match_No;
	private String sitter_Id;
	private String user_Id;
	private String isHome;
	private Date careDate;
	private int price;
	private String wantToSay;
	private String special_Note;
	private String thumbnail;
	private String regStatus;
	private String isrest;
	private String countPet;
	public Matching() {
		super();
	}
	public Matching(int match_No, String sitter_Id, String user_Id, String isHome, Date careDate, int price,
			String wantToSay, String special_Note, String thumbnail, String regStatus, String isrest, String countPet) {
		super();
		this.match_No = match_No;
		this.sitter_Id = sitter_Id;
		this.user_Id = user_Id;
		this.isHome = isHome;
		this.careDate = careDate;
		this.price = price;
		this.wantToSay = wantToSay;
		this.special_Note = special_Note;
		this.thumbnail = thumbnail;
		this.regStatus = regStatus;
		this.isrest = isrest;
		this.countPet = countPet;
	}
	public Matching(String sitter_Id) {
		super();
		this.sitter_Id = sitter_Id;
	}
	
	
	
	public Matching(String sitter_Id, String user_Id, String isHome, Date careDate, String regStatus) {
		super();
		this.sitter_Id = sitter_Id;
		this.user_Id = user_Id;
		this.isHome = isHome;
		this.careDate = careDate;
		this.regStatus = regStatus;
	}
	public Matching(int match_No, String sitter_Id, String user_Id, String isHome, Date careDate, int price,
			String wantToSay, String special_Note, String thumbnail, String regStatus, String countPet) {
		super();
		this.match_No = match_No;
		this.sitter_Id = sitter_Id;
		this.user_Id = user_Id;
		this.isHome = isHome;
		this.careDate = careDate;
		this.price = price;
		this.wantToSay = wantToSay;
		this.special_Note = special_Note;
		this.thumbnail = thumbnail;
		this.regStatus = regStatus;
		this.countPet = countPet;
	}
	public Matching(int match_No, String user_Id) {
		super();
		this.match_No = match_No;
		this.user_Id = user_Id;
	}
	public Matching(Date careDate) {
		super();
		this.careDate = careDate;
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
	public String getIsrest() {
		return isrest;
	}
	public void setIsrest(String isrest) {
		this.isrest = isrest;
	}
	public String getCountPet() {
		return countPet;
	}
	public void setCountPet(String countPet) {
		this.countPet = countPet;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Matching [match_No=" + match_No + ", sitter_Id=" + sitter_Id + ", user_Id=" + user_Id + ", isHome="
				+ isHome + ", careDate=" + careDate + ", price=" + price + ", wantToSay=" + wantToSay
				+ ", special_Note=" + special_Note + ", thumbnail=" + thumbnail + ", regStatus=" + regStatus
				+ ", isrest=" + isrest + ", countPet=" + countPet + "]";
	}
	

}
