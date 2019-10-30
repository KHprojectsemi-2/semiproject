package user.model.vo;

public class Pet {
	private int petNo;
	private String userId;
	private String petName;
	private String petWeight;
	private String petImage;
	private String petKind;
	private String petGender;
	private String isNeutral;
	private int petAge;
	private String petMatch;

	
	public Pet() {
		super();
	}
	
	public Pet(String userId, String petName, String petWeight, String petImage, String petKind, String petGender, String isNeutral,
			int petAge) {
		super();
		this.userId = userId;
		this.petName = petName;
		this.petWeight = petWeight;
		this.petImage = petImage;
		this.petKind = petKind;
		this.petGender = petGender;
		this.isNeutral = isNeutral;
		this.petAge = petAge;
	}

	
	public Pet(int petNo, String userId, String petName, String petWeight, String petImage, String petKind,
			String petGender, String isNeutral, int petAge,String petMatch) {

		super();
		this.petNo = petNo;
		this.userId = userId;
		this.petName = petName;
		this.petWeight = petWeight;
		this.petImage = petImage;
		this.petKind = petKind;
		this.petGender = petGender;
		this.isNeutral = isNeutral;
		this.petAge = petAge;
		this.petMatch = petMatch;
	}
	public int getPetNo() {
		return petNo;
	}
	public void setPetNo(int petNo) {
		this.petNo = petNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public String getPetWeight() {
		return petWeight;
	}
	public void setPetWeight(String petWeight) {
		this.petWeight = petWeight;
	}
	public String getPetImage() {
		return petImage;
	}
	public void setPetImage(String petImage) {
		this.petImage = petImage;
	}
	public String getPetKind() {
		return petKind;
	}
	public void setPetKind(String petKind) {
		this.petKind = petKind;
	}
	public String getPetGender() {
		return petGender;
	}
	public void setPetGender(String petGender) {
		this.petGender = petGender;
	}
	public String getIsNeutral() {
		return isNeutral;
	}
	public void setIsNeutral(String isNeutral) {
		this.isNeutral = isNeutral;
	}
	public int getPetAge() {
		return petAge;
	}
	public void setPetAge(int petAge) {
		this.petAge = petAge;
	}
	
	public String getPetMatch() {
		return petMatch;
	}

	public void setPetMatch(String petMatch) {
		this.petMatch = petMatch;
	}

	
	@Override
	public String toString() {
		return "Pet [petNo=" + petNo + ", userId=" + userId + ", petName=" + petName + ", petWeight=" + petWeight
				+ ", petImage=" + petImage + ", petKind=" + petKind + ", petGender=" + petGender + ", isNeutral="
				+ isNeutral + ", petAge=" + petAge + ", petMatch=" + petMatch + "]";
	}


	
	
	
	
}
