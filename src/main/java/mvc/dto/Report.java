package mvc.dto;

import java.sql.Date;

public class Report{


			private int clmno;
			private int  bodno; 
			private String clmname; 
			private Date clmdate; 
			private int clmreason; 
			private int clmcondition;
		
			
			
			public int getClmno() {
				
				return clmno;
			}
			public void setClmno(int clmno) {
				this.clmno = clmno;
			}
			public int getBodno() {
				return bodno;
			}
			public void setBodno(int bodno) {
				this.bodno = bodno;
			}
			public String getClmname() {
				return clmname;
			}
			public void setClmname(String clmname) {
				this.clmname = clmname;
			}
			public Date getClmdate() {
				return clmdate;
			}
			public void setClmdate(Date clmdate) {
				this.clmdate = clmdate;
			}
			public int getClmreason() {
				return clmreason;
			}
			public void setClmreason(int clmreason) {
				this.clmreason = clmreason;
			}
			public int getClmcondition() {
				return clmcondition;
			}
			public void setClmcondition(int clmcondition) {
				this.clmcondition = clmcondition;
			}
			@Override
			public String toString() {
				return "Report [clmno=" + clmno + ", bodno=" + bodno + ", clmname=" + clmname + ", clmdate=" + clmdate
						+ ", clmreason=" + clmreason + ", clmcondition=" + clmcondition + ", getClmno()=" + getClmno()
						+ ", getBodno()=" + getBodno() + ", getClmname()=" + getClmname() + ", getClmdate()="
						+ getClmdate() + ", getClmreason()=" + getClmreason() + ", getClmcondition()="
						+ getClmcondition() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
						+ ", toString()=" + super.toString() + "]";
			} 
		
	
	
	
	
}