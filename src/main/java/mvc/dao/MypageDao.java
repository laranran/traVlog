package mvc.dao;

import java.util.List;

public interface MypageDao {

    // 해당 계정 작성글 리스트 불러오기
	
	public List selectPage(String memnick);
	
	// 해당 계정 작성글 사진 불러오기
	
	public List selectPic(String memnick);

}
