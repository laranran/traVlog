package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.MypageDao;
import mvc.dto.Board;
import mvc.dto.Files;

@Service
public class MypageService {

	@Autowired MypageDao mypageDao;
	
	// 해당 계정 작성글 리스트 불러오기
	
	public List selectPage(String memnick) {
		
		return mypageDao.selectPage(memnick);
	}
		
	// 해당 계정 작성글 사진 불러오기
		
	public List selectPic(String memnick) {
		
		return mypageDao.selectPic(memnick);
	}
	
	// 해당 계정 상세 작성글 내용 불러오기
	
	public Board selectContent(int bodno) {
		
		return mypageDao.selectContent(bodno);
	}
		
	// 해당 계정 상세 사진 불러오기
		
	public Files selectContentPic(int bodno) {
		
		return mypageDao.selectContentPic(bodno);
	}


	
}
