package mvc.dto;

public class Member {

	private String memid;
	private String mempw;
	private int memage;
	private String memnick;

	private String memsex;
	private String memname;
	private String mememail;
	private String memphone;
	
	//포스팅 팔로워 팔로잉 수 추가
    private int memposting;
    private int memfollwing;
    private int memfollower;

	public int getMemage() {
		return memage;
	}

	public void setMemage(int memage) {
		this.memage = memage;
	}

	public String getMemnick() {
		return memnick;
	}

	public void setMemnick(String memnick) {
		this.memnick = memnick;
	}

	public String getMemsex() {
		return memsex;
	}

	public void setMemsex(String memsex) {
		this.memsex = memsex;
	}

	public String getMemid() {
		return memid;
	}

	public void setMemid(String memid) {
		this.memid = memid;
	}

	public String getMempw() {
		return mempw;
	}

	public void setMempw(String mempw) {
		this.mempw = mempw;
	}

	public String getMemname() {
		return memname;
	}

	public void setMemname(String memname) {
		this.memname = memname;
	}

	public String getMememail() {
		return mememail;
	}

	public void setMememail(String mememail) {
		this.mememail = mememail;
	}

	public String getMemphone() {
		return memphone;
	}

	public void setMemphone(String memphone) {
		this.memphone = memphone;
	}
	
	public int getMemposting() {
		return memposting;
	}

	public void setMemposting(int memposting) {
		this.memposting = memposting;
	}

	public int getMemfollwing() {
		return memfollwing;
	}

	public void setMemfollwing(int memfollwing) {
		this.memfollwing = memfollwing;
	}

	public int getMemfollower() {
		return memfollower;
	}

	public void setMemfollower(int memfollower) {
		this.memfollower = memfollower;
	}

	public String toString() {
		return "member=[ " 
				+ "memid: " + memid 
				+ ", mempw: " + mempw 
				+ ", memnick: " + memnick
				+ ", memsex: " + memsex
				+ ", memage: " + memage
				+ ", memname: " + memname 
				+ ", mememail: " + mememail
				+ ", memphone: " + memphone + " ]";
	}
}
