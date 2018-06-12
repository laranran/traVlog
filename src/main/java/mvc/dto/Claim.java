package mvc.dto;

public class Claim {

	private int clmNo; /* 신고글번호 */
	private int bodNo; /* 게시글번호 */
	private String clmName; /* 닉네임 */
	private String clmDate; /* 신고일 */
	private int clmReason; /* 신고사유 */
	private int clmCondition; /* 신고상태 */
	
	public int getClmNo() {
		return clmNo;
	}
	public void setClmNo(int clmNo) {
		this.clmNo = clmNo;
	}
	public int getBodNo() {
		return bodNo;
	}
	public void setBodNo(int bodNo) {
		this.bodNo = bodNo;
	}
	public String getClmName() {
		return clmName;
	}
	public void setClmName(String clmName) {
		this.clmName = clmName;
	}
	public String getClmDate() {
		return clmDate;
	}
	public void setClmDate(String clmDate) {
		this.clmDate = clmDate;
	}
	public int getClmReason() {
		return clmReason;
	}
	public void setClmReason(int clmReason) {
		this.clmReason = clmReason;
	}
	public int getClmCondition() {
		return clmCondition;
	}
	public void setClmCondition(int clmCondition) {
		this.clmCondition = clmCondition;
	}
	
	@Override
	public String toString() {
		return "Claim [ clmNo : " + clmNo
				+ "bodNo : " + bodNo
				+ "clmName : " + clmName
				+ "clmDate : " + clmDate
				+ "clmReason : " + clmReason
				+ "clmCondition : " + clmCondition 
				+ "]";
	}
}
