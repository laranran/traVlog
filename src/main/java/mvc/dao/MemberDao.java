package mvc.dao;

import mvc.dto.Member;

public interface MemberDao {
	
	//로그인을 위해 아이디와 비밀번호로 member의 count가 1인지 체크
	public int memberCount(Member member);

	public Member gerMemberOne(Member member);
	
}
