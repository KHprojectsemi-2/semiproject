package matching.model.vo;
import java.io.Serializable;
import java.sql.Date;

public class PetSitterMatchingJoin implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int match_No;
	private String sitter_Id;
	private String userId;
	private String isHome;
	private int price;
	private int regStatus;
	//	1 - 매칭 안된상태 
	//	2 - 매칭 완료 / 결제 미진행
	//	3 - 매칭 완료 / 결제 진행
	//	4 - 매칭 종료
	//	5 - 삭제
	private String wantToSay;
	private String special_Note;
	private String thumbnail;
	private String isRest;
	private double grade;
	private String residence;
	private String job;
	private String withFam;
	private String withPet;
	private String canLarge;
	private String canMedic;
	private String canOld;
	private String canSick;
	private String isLicense;
	private String chkResume;
	private String userName;
	private String userEmail;
	private String userPhone;
	private String userAddress;
	private int reported;
	private String countPet;



	public PetSitterMatchingJoin() {
		super();
	}



	public PetSitterMatchingJoin(int match_No, String sitter_Id, String userId, String isHome, int price, int regStatus,
			String wantToSay, String special_Note, String thumbnail, String isRest, double grade, String residence,
			String job, String withFam, String withPet, String canLarge, String canMedic, String canOld, String canSick,
			String isLicense, String chkResume, String userName, String userEmail, String userPhone, String userAddress,
			int reported, String countPet) {
		super();
		this.match_No = match_No;
		this.sitter_Id = sitter_Id;
		this.userId = userId;
		this.isHome = isHome;
		this.price = price;
		this.regStatus = regStatus;
		this.wantToSay = wantToSay;
		this.special_Note = special_Note;
		this.thumbnail = thumbnail;
		this.isRest = isRest;
		this.grade = grade;
		this.residence = residence;
		this.job = job;
		this.withFam = withFam;
		this.withPet = withPet;
		this.canLarge = canLarge;
		this.canMedic = canMedic;
		this.canOld = canOld;
		this.canSick = canSick;
		this.isLicense = isLicense;
		this.chkResume = chkResume;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.userAddress = userAddress;
		this.reported = reported;
		this.countPet = countPet;
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



	public String getUserId() {
		return userId;
	}



	public void setUserId(String userId) {
		this.userId = userId;
	}



	public String getIsHome() {
		return isHome;
	}



	public void setIsHome(String isHome) {
		this.isHome = isHome;
	}



	public int getPrice() {
		return price;
	}



	public void setPrice(int price) {
		this.price = price;
	}



	public int getRegStatus() {
		return regStatus;
	}



	public void setRegStatus(int regStatus) {
		this.regStatus = regStatus;
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



	public String getIsRest() {
		return isRest;
	}



	public void setIsRest(String isRest) {
		this.isRest = isRest;
	}



	public double getGrade() {
		return grade;
	}



	public void setGrade(double grade) {
		this.grade = grade;
	}



	public String getResidence() {
		return residence;
	}



	public void setResidence(String residence) {
		this.residence = residence;
	}



	public String getJob() {
		return job;
	}



	public void setJob(String job) {
		this.job = job;
	}



	public String getWithFam() {
		return withFam;
	}



	public void setWithFam(String withFam) {
		this.withFam = withFam;
	}



	public String getWithPet() {
		return withPet;
	}



	public void setWithPet(String withPet) {
		this.withPet = withPet;
	}



	public String getCanLarge() {
		return canLarge;
	}



	public void setCanLarge(String canLarge) {
		this.canLarge = canLarge;
	}



	public String getCanMedic() {
		return canMedic;
	}



	public void setCanMedic(String canMedic) {
		this.canMedic = canMedic;
	}



	public String getCanOld() {
		return canOld;
	}



	public void setCanOld(String canOld) {
		this.canOld = canOld;
	}



	public String getCanSick() {
		return canSick;
	}



	public void setCanSick(String canSick) {
		this.canSick = canSick;
	}



	public String getIsLicense() {
		return isLicense;
	}



	public void setIsLicense(String isLicense) {
		this.isLicense = isLicense;
	}



	public String getChkResume() {
		return chkResume;
	}



	public void setChkResume(String chkResume) {
		this.chkResume = chkResume;
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



	public String getCountPet() {
		return countPet;
	}



	public void setCountPet(String countPet) {
		this.countPet = countPet;
	}



	@Override
	public String toString() {
		return "PetSitterMatchingJoin [match_No=" + match_No + ", sitter_Id=" + sitter_Id + ", userId=" + userId
				+ ", isHome=" + isHome + ", price=" + price + ", regStatus=" + regStatus + ", wantToSay=" + wantToSay
				+ ", special_Note=" + special_Note + ", thumbnail=" + thumbnail + ", isRest=" + isRest + ", grade="
				+ grade + ", residence=" + residence + ", job=" + job + ", withFam=" + withFam + ", withPet=" + withPet
				+ ", canLarge=" + canLarge + ", canMedic=" + canMedic + ", canOld=" + canOld + ", canSick=" + canSick
				+ ", isLicense=" + isLicense + ", chkResume=" + chkResume + ", userName=" + userName + ", userEmail="
				+ userEmail + ", userPhone=" + userPhone + ", userAddress=" + userAddress + ", reported=" + reported
				+ ", countPet=" + countPet + "]";
	}


	
	
}
