package mvc.dto;

public class Hashtag {
	private int tagno; 
	private String tagname;
	private int taghit;
	private String tagopen;
	public int getTagno() {
		return tagno;
	}
	public void setTagno(int tagno) {
		this.tagno = tagno;
	}
	public String getTagname() {
		return tagname;
	}
	public void setTagname(String tagname) {
		this.tagname = tagname;
	}
	public int getTaghit() {
		return taghit;
	}
	public void setTaghit(int taghit) {
		this.taghit = taghit;
	}
	public String getTagopen() {
		return tagopen;
	}
	public void setTagopen(String tagopen) {
		this.tagopen = tagopen;
	}
	
	public String toString() {
		return "hashtag=[ " 
				+ "tagno: " + tagno 
				+ ", tagname: " + tagname 
				+ ", taghit: " + taghit
				+ ", tagopen: " + tagopen
				+ " ]";
	}
	
}


