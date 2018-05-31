package mvc.dto;

public class FollowingRec {
	private int worth;
	private String recommend;
	private String memid;
	private String memnick;
	private int memfollower;
	
	public int getWorth() {
		return worth;
	}
	public void setWorth(int worth) {
		this.worth = worth;
	}
	public String getRecommend() {
		return recommend;
	}
	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}
	
	public String getMemid() {
		return memid;
	}
	public void setMemid(String memid) {
		this.memid = memid;
	}
	
	public int getMemfollower() {
		return memfollower;
	}
	public void setMemfollower(int memfollower) {
		this.memfollower = memfollower;
	}
	
	public String getMemnick() {
		return memnick;
	}
	public void setMemnick(String memnick) {
		this.memnick = memnick;
	}
	public String toString() {
		return "FollowerRec=[ " 
				+ "worth: " + worth 
				+ ", recommend: " + recommend 
				+ " ]";
	}
	
}


