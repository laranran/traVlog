package mvc.dao;

import mvc.dto.Board;
import mvc.dto.Files;
import mvc.dto.HashTag;

public interface BoardDao {

	//게시글 삽입
	public void insertBoard(Board board);
	
	//글번호 얻어오기
	public int getBoardNo(Board board);
	
	//파일 정보 삽입
	public void insertFile(Files file);
	
	//해시태그 체크
	public int checkHashTag(HashTag hash);
	//해시태그 삽입
	public void insertHashTag(HashTag hash);
	//해시태그 조회수 업데이트
	public void updateHashTagHit(HashTag hash);

}
