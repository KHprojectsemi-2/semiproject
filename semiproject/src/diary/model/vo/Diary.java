package diary.model.vo;

import java.io.Serializable;

public class Diary implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -6367373431951022223L;
	private int diaryNo;
	private int matchNo;
	private String diaryContent;
	private String diaryImage;
	private String isToilet;
	private String isWalk;
	private String isMedic;
	private String chkNeeds;
	private String review;
	private int grade;
	private String diaryStatus;
	
	public Diary() {
		
	}
	
	public Diary(int diaryNo, int matchNo, String diaryContent, String diaryImage, String isToilet, String isWalk,
			String isMedic, String chkNeeds, String review, int grade, String diaryStatus) {
		super();
		this.diaryNo = diaryNo;
		this.matchNo = matchNo;
		this.diaryContent = diaryContent;
		this.diaryImage = diaryImage;
		this.isToilet = isToilet;
		this.isWalk = isWalk;
		this.isMedic = isMedic;
		this.chkNeeds = chkNeeds;
		this.review = review;
		this.grade = grade;
		this.diaryStatus = diaryStatus;
	}
	
	public int getDiaryNo() {
		return diaryNo;
	}

	public void setDiaryNo(int diaryNo) {
		this.diaryNo = diaryNo;
	}

	public int getMatchNo() {
		return matchNo;
	}

	public void setMatchNo(int matchNo) {
		this.matchNo = matchNo;
	}

	public String getDiaryContent() {
		return diaryContent;
	}

	public void setDiaryContent(String diaryContent) {
		this.diaryContent = diaryContent;
	}

	public String getDiaryImage() {
		return diaryImage;
	}

	public void setDiaryImage(String diaryImage) {
		this.diaryImage = diaryImage;
	}

	public String getIsToilet() {
		return isToilet;
	}

	public void setIsToilet(String isToilet) {
		this.isToilet = isToilet;
	}

	public String getIsWalk() {
		return isWalk;
	}

	public void setIsWalk(String isWalk) {
		this.isWalk = isWalk;
	}

	public String getIsMedic() {
		return isMedic;
	}

	public void setIsMedic(String isMedic) {
		this.isMedic = isMedic;
	}

	public String getChkNeeds() {
		return chkNeeds;
	}

	public void setChkNeeds(String chkNeeds) {
		this.chkNeeds = chkNeeds;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getDiaryStatus() {
		return diaryStatus;
	}

	public void setDiaryStatus(String diaryStatus) {
		this.diaryStatus = diaryStatus;
	}

	@Override
	public String toString() {
		return "Diary [diaryNo=" + diaryNo + ", matchNo=" + matchNo + ", diaryContent=" + diaryContent + ", diaryImage="
				+ diaryImage + ", isToilet=" + isToilet + ", isWalk=" + isWalk + ", isMedic=" + isMedic + ", chkNeeds="
				+ chkNeeds + ", review=" + review + ", grade=" + grade + ", diaryStatus=" + diaryStatus + "]";
	}
	
	
	
	
}
