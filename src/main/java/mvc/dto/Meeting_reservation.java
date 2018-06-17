package mvc.dto;

import org.springframework.stereotype.Component;




@Component
public class Meeting_reservation {
	
	private int meeting_no;
	
	private int rstart;
	
	private int rend;
	
	private String reservation_location;
	
	private int personnel;

	private int group_no;
	
	private String status;
	
	private String res_day;
	
	private int guest;
	
	private int fee;

	public int getMeeting_no() {
		return meeting_no;
	}

	public void setMeeting_no(int meeting_no) {
		this.meeting_no = meeting_no;
	}

	public int getRstart() {
		return rstart;
	}

	public void setRstart(int rstart) {
		this.rstart = rstart;
	}

	public int getRend() {
		return rend;
	}

	public void setRend(int rend) {
		this.rend = rend;
	}

	public String getReservation_location() {
		return reservation_location;
	}

	public void setReservation_location(String reservation_location) {
		this.reservation_location = reservation_location;
	}

	public int getPersonnel() {
		return personnel;
	}

	public void setPersonnel(int personnel) {
		this.personnel = personnel;
	}

	public int getGroup_no() {
		return group_no;
	}

	public void setGroup_no(int group_no) {
		this.group_no = group_no;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getRes_day() {
		return res_day;
	}

	public void setRes_day(String res_day) {
		this.res_day = res_day;
	}

	public int getGuest() {
		return guest;
	}

	public void setGuest(int guest) {
		this.guest = guest;
	}

	public int getFee() {
		return fee;
	}

	public void setFee(int fee) {
		this.fee = fee;
	}

	@Override
	public String toString() {
		return "Meeting_reservation [meeting_no=" + meeting_no + ", rstart=" + rstart + ", rend=" + rend
				+ ", reservation_location=" + reservation_location + ", personnel=" + personnel + ", group_no="
				+ group_no + ", status=" + status + ", res_day=" + res_day + ", guest=" + guest + ", fee=" + fee
				+ ", getMeeting_no()=" + getMeeting_no() + ", getRstart()=" + getRstart() + ", getRend()=" + getRend()
				+ ", getReservation_location()=" + getReservation_location() + ", getPersonnel()=" + getPersonnel()
				+ ", getGroup_no()=" + getGroup_no() + ", getStatus()=" + getStatus() + ", getRes_day()=" + getRes_day()
				+ ", getGuest()=" + getGuest() + ", getFee()=" + getFee() + "]";
	}
	
	
	
}