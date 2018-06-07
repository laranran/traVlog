package mvc.dto;

import java.sql.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Board {
	private int bodno;
	private String bodtitle;
	private String bodcontent;
	private String bodhashtag;
	private Date boddate;
	private int bodrecommend;
	private String bodname;
	
	//여행 시작일, 마지막일 추가
	private Date startdate;
	private Date enddate;

	//추천인 추가
	private String memnick;
	private int recommendCnt;
	public int getRecommendCnt() {
		return recommendCnt;
	}

	public void setRecommendCnt(int recommendCnt) {
		this.recommendCnt = recommendCnt;
	}

	private int isExistsLikeData; 

	public Date getStartdate() {
		return startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public Date getEnddate() {
		return enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}

	//file을 여러개 받기 위해 추가함.
	private List<MultipartFile> upload;
	
	public int getBodno() {
		return bodno;
	}

	public void setBodno(int bodno) {
		this.bodno = bodno;
	}

	public String getBodtitle() {
		return bodtitle;
	}

	public void setBodtitle(String bodtitle) {
		this.bodtitle = bodtitle;
	}

	public String getBodcontent() {
		return bodcontent;
	}

	public void setBodcontent(String bodcontent) {
		this.bodcontent = bodcontent;
	}

	public String getBodhashtag() {
		return bodhashtag;
	}

	public void setBodhashtag(String bodhashtag) {
		this.bodhashtag = bodhashtag;
	}

	public Date getBoddate() {
		return boddate;
	}

	public void setBoddate(Date boddate) {
		this.boddate = boddate;
	}

	public int getBodrecommend() {
		return bodrecommend;
	}

	public void setBodrecommend(int bodrecommend) {
		this.bodrecommend = bodrecommend;
	}

	public String getBodname() {
		return bodname;
	}

	public void setBodname(String bodname) {
		this.bodname = bodname;
	}
	

	public String getMemnick() {
		return memnick;
	}

	public void setMemnick(String memnick) {
		this.memnick = memnick;
	}

	public int getIsExistsLikeData() {
		return isExistsLikeData;
	}

	public void setIsExistsLikeData(int isExistsLikeData) {
		this.isExistsLikeData = isExistsLikeData;
	}

	@Override
	public String toString() {
		return "BOARD =[ "
				+"BODNO : "+bodno
				+", BODTITLE : "+bodtitle
				+", BODCONTENT : "+bodcontent
				+", BODHASHTAG : "+bodhashtag
				+", BODDATE : "+boddate
				+", BODRECOMMEND : "+bodrecommend
				+", start,end date : "+startdate+","+enddate
				+", BODNAME : "+bodname
				+", ISEXISTSLIKEDATE :"+isExistsLikeData+"]";
	}

	public List<MultipartFile> getUpload() {
		return upload;
	}

	public void setUpload(List<MultipartFile> upload) {
		this.upload = upload;
	}
}
