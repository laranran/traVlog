package mvc.dto;

public class Recommend {
	
	private int boardno;
	private String memnick;
	
	public int getBoardno() {
		return boardno;
	}

	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}

	public String getMemnick() {
		return memnick;
	}

	public void setMemnick(String memnick) {
		this.memnick = memnick;
	}

	@Override
	public String toString() {
		return "Member [ boardno = "+boardno
				+", memnick = " + memnick+"]\n";
		
	}
}
