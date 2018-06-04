package mvc.dto;

import java.sql.Date;

public class Message {

	
	private int m_no;
	private int mesno; 
	private String memid;
	private String mesname ;
	private String mescontent;
	private Date mesdate;
	
	
	
	
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public int getMesno() {
		return mesno;
	}
	public void setMesno(int mesno) {
		this.mesno = mesno;
	}
	public String getMemid() {
		return memid;
	}
	public void setMemid(String memid) {
		this.memid = memid;
	}
	public String getMesname() {
		return mesname;
	}
	public void setMesname(String mesname) {
		this.mesname = mesname;
	}
	public String getMescontent() {
		return mescontent;
	}
	public void setMescontent(String mescontent) {
		this.mescontent = mescontent;
	}
	public Date getMesdate() {
		return mesdate;
	}
	public void setMesDate(Date mesdate) {
		this.mesdate = mesdate;
	}
	@Override
	public String toString() {
		return "Message [mesno=" + mesno + ", memid=" + memid + ", mesname=" + mesname + ", mescontent=" + mescontent
				+ ", mesDate=" + mesdate + ", getMesno()=" + getMesno() + ", getMemid()=" + getMemid()
				+ ", getMesname()=" + getMesname() + ", getMescontent()=" + getMescontent() + ", getMesDate()="
				+ getMesdate() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
	
}