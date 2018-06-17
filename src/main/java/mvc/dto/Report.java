package mvc.dto;

import java.sql.Date;

public class Report{


			private int userclmno;

			private String clmfromid; 
			private String clmtoid; 
			private Date clmdate; 
			private int clmreason; 
			private int clmcondition;
			public int getUserclmno() {
				return userclmno;
			}
			public void setUserclmno(int userclmno) {
				this.userclmno = userclmno;
			}
			public String getClmfromid() {
				return clmfromid;
			}
			public void setClmfromid(String clmfromid) {
				this.clmfromid = clmfromid;
			}
			public String getClmtoid() {
				return clmtoid;
			}
			public void setClmtoid(String clmtoid) {
				this.clmtoid = clmtoid;
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
				return "Report [userclmno=" + userclmno + ", clmfromid=" + clmfromid + ", clmtoid=" + clmtoid
						+ ", clmdate=" + clmdate + ", clmreason=" + clmreason + ", clmcondition=" + clmcondition + "]";
			}
		
		
			
			
			
}