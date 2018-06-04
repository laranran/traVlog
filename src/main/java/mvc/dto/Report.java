package mvc.dto;

import java.sql.Date;

public class Report{


			private int userclmno;

			private String clmfromid; 
			private String clmtoid; 
			private Date clmdate; 
			private int clmcontent; 
			private int clming;
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
			public int getClmcontent() {
				return clmcontent;
			}
			public void setClmcontent(int clmcontent) {
				this.clmcontent = clmcontent;
			}
			public int getClming() {
				return clming;
			}
			public void setClming(int clming) {
				this.clming = clming;
			}
			@Override
			public String toString() {
				return "Report [userclmno=" + userclmno + ", clmfromid=" + clmfromid + ", clmtoid=" + clmtoid
						+ ", clmdate=" + clmdate + ", clmcontent=" + clmcontent + ", clming=" + clming
						+ ", getUserclmno()=" + getUserclmno() + ", getClmfromid()=" + getClmfromid()
						+ ", getClmtoid()=" + getClmtoid() + ", getClmdate()=" + getClmdate() + ", getClmcontent()="
						+ getClmcontent() + ", getClming()=" + getClming() + "]";
			}

			
}
			
		