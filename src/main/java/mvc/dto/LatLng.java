package mvc.dto;

public class LatLng {
	private int bodno;
	private String position;
	private Double positionx;
	private Double positiony;
	
	public Double getPositionx() {
		return positionx;
	}
	public void setPositionx(Double positionx) {
		this.positionx = positionx;
	}
	public Double getPositiony() {
		return positiony;
	}
	public void setPositiony(Double positiony) {
		this.positiony = positiony;
	}
	
	public int getBodno() {
		return bodno;
	}
	public void setBodno(int bodno) {
		this.bodno = bodno;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	
	@Override
	public String toString() {
		return "LatLng = [ "
				+"positionx = "+positionx
				+"positiony = "+positiony+" ]";
	}
}
