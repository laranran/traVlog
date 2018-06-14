package mvc.dto;

import java.util.Date;

public class Profile {

	private String memid; //회원아이디 
	private String pfText; //프로필 메시지 
	private String pfImg; //프로필 이미지 
	private String pfOriginfile; //원본파일 
	private String pfSavefile; //저장될파일 
	private int pf_Size; //파일크기 
	private Date  pfDate; //저장날짜
	
	public String getMemid() {
		return memid;
	}
	public void setMemid(String memid) {
		this.memid = memid;
	}
	public String getPfText() {
		return pfText;
	}
	public void setPfText(String pfText) {
		this.pfText = pfText;
	}
	public String getPfImg() {
		return pfImg;
	}
	public void setPfImg(String pfImg) {
		this.pfImg = pfImg;
	}
	public String getPfOriginfile() {
		return pfOriginfile;
	}
	public void setPfOriginfile(String pfOriginfile) {
		this.pfOriginfile = pfOriginfile;
	}
	public String getPfSavefile() {
		return pfSavefile;
	}
	public void setPfSavefile(String pfSavefile) {
		this.pfSavefile = pfSavefile;
	}
	public int getPf_Size() {
		return pf_Size;
	}
	public void setPf_Size(int pf_Size) {
		this.pf_Size = pf_Size;
	}
	public Date getPfDate() {
		return pfDate;
	}
	public void setPfDate(Date pfDate) {
		this.pfDate = pfDate;
	}
	
	@Override
	public String toString() {
		return "[profile] memid = "+memid+"pfText = "+pfText+"pfImg = "+pfImg+"pfOriginfile = "+pfOriginfile+"pfSavefile = "+pfSavefile
				+ "pf_Size = "+pf_Size+"pfDate = "+pfDate;
	}
	
}
