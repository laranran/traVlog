package mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.BoardDao;
import mvc.dto.Board;
import mvc.dto.Files;
import mvc.dto.HashTag;
import mvc.dto.LatLng;

@Service
public class BoardService {

	@Autowired BoardDao boardDao;
	
	//게시글 업로드
	public void insertBoard(Board board) {
		boardDao.insertBoard(board);
	}
	
	//파일을 디비에 저장할때 게시글 번호가 필요해서 추가함.
	public int getBoardNo(Board board) {
		//제목과 내용을 이용해서 번호 가져오기
		return boardDao.getBoardNo(board);
	}
	
	public void insertFile(Files file) {
		boardDao.insertFile(file);
	}

	public void insertHashTag(HashTag hash) {
		boardDao.insertHashTag(hash);
	}

	public int checkHashTag(HashTag hash) {
		return boardDao.checkHashTag(hash);
	}

	public void updateHashTagHit(HashTag hash) {
		boardDao.updateHashTagHit(hash);
	}

	public void insertLatLng(LatLng latLng) {
		boardDao.insertLatLng(latLng);
	}

	public void updateDates(Board board) {
		boardDao.updateDates(board);
	}
	
}
