package mvc.dao;

import java.util.ArrayList;
import java.util.Map;

import mvc.dto.Member;

public interface MemberDao {
	
	//로그인을 위해 아이디와 비밀번호로 member의 count가 1인지 체크
	public int memberCount(Member member);

	public Member getMemberOne(Member member);

	public void createMember(Member member);

	public int idcheck(String memid);

	public int nickcheck(String memnick);

	public String findId(Map<String, Object> paramMap);
	
	public String findPw(Map<String, Object> paramMap);

	public ArrayList<Member> MemberInfo(String memid);
}
