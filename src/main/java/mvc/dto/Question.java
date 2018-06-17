package mvc.dto;

import java.sql.Date;

public class Question {
	
	private String memid;
	private int qusno;
	private String qustitle;
	private String qusname;
	private String quscontent;
	private Date qusdate;
	
	public String getMemid() {
		return memid;
	}
	public void setMemid(String memid) {
		this.memid = memid;
	}
	public int getQusno() {
		return qusno;
	}
	public void setQusno(int qusno) {
		this.qusno = qusno;
	}
	public String getQustitle() {
		return qustitle;
	}
	public void setQustitle(String qustitle) {
		this.qustitle = qustitle;
	}
	public String getQusname() {
		return qusname;
	}
	public void setQusname(String qusname) {
		this.qusname = qusname;
	}
	public String getQuscontent() {
		return quscontent;
	}
	public void setQuscontent(String quscontent) {
		this.quscontent = quscontent;
	}
	public Date getQusdate() {
		return qusdate;
	}
	public void setQusdate(Date qusdate) {
		this.qusdate = qusdate;
	}
	@Override
	public String toString() {
		return "Question [memid=" + memid + ", qusno=" + qusno + ", qustitle=" + qustitle + ", qusname=" + qusname
				+ ", quscontent=" + quscontent + ", qusdate=" + qusdate + ", getMemid()=" + getMemid() + ", getQusno()="
				+ getQusno() + ", getQustitle()=" + getQustitle() + ", getQusname()=" + getQusname()
				+ ", getQuscontent()=" + getQuscontent() + ", getQusdate()=" + getQusdate() + "]";
	}
	
	}
	
