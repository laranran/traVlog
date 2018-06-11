package mvc.dao;

import java.util.List;

import mvc.dto.Board;
import mvc.dto.Comment;

public interface CommentDao {
	//댓글 작성 메서드
	public void insertComment(Comment comment);

	public List<Comment> getCommentListByBodno(Board commentBoard);

	public void deleteCommentByComno(Comment comment);

	public void updateCommentByComno(Comment comment);
	
}
