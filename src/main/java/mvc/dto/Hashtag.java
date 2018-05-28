package mvc.dto;
import lombok.Data;

@Data
public class Hashtag {
	private int tagNo; 
	private String tagName;
	private int tagHit;
	private String tagOpen;
}
