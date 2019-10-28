package petSitter.model.vo;

import java.io.Serializable;

public class PetSitter implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 8781128373138778399L;
	private String userId;
	private int grade;
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
	
	public PetSitter() {
		
	}
	
	public PetSitter(String userId) {
		super();
		this.userId = userId;
	}

	public PetSitter(String userId, String residence, String job, String withFam, String withPet, String canLarge,
			String canMedic, String canOld, String canSick, String isLicense) {
		super();
		this.userId = userId;
		this.residence = residence;
		this.job = job;
		this.withFam = withFam;
		this.withPet = withPet;
		this.canLarge = canLarge;
		this.canMedic = canMedic;
		this.canOld = canOld;
		this.canSick = canSick;
		this.isLicense = isLicense;
	}

	public PetSitter(String userId, int grade, String residence, String job, String withFam, String withPet,
			String canLarge, String canMedic, String canOld, String canSick, String isLicense, String chkResume) {
		super();
		this.userId = userId;
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
	}
	
	public PetSitter(String residence, String job, String withFam, String withPet, String canLarge, String canMedic,
			String canOld, String canSick, String isLicense) {
		super();
		this.residence = residence;
		this.job = job;
		this.withFam = withFam;
		this.withPet = withPet;
		this.canLarge = canLarge;
		this.canMedic = canMedic;
		this.canOld = canOld;
		this.canSick = canSick;
		this.isLicense = isLicense;
	}

	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getGrade() {
		return grade;
	}
	public PetSitter(String userId, String residence, String isLicense) {
		super();
		this.userId = userId;
		this.residence = residence;
		this.isLicense = isLicense;
	}

	public void setGrade(int grade) {
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
	@Override
	public String toString() {
		return "PetSitter [userId=" + userId + ", grade=" + grade + ", residence=" + residence + ", job=" + job
				+ ", withFam=" + withFam + ", withPet=" + withPet + ", canLarge=" + canLarge + ", canMedic=" + canMedic
				+ ", canOld=" + canOld + ", canSick=" + canSick + ", isLicense=" + isLicense + ", chkResume="
				+ chkResume + "]";
	}
	
	

}
