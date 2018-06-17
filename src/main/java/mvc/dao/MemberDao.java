package mvc.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import mvc.dto.Advertising;
import mvc.dto.Member;
import mvc.dto.Message;
import mvc.dto.Profile;
import mvc.dto.Question;
import mvc.dto.Report;

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

	public ArrayList<Profile> getProfile(String memid);
	

	public void report(Report report);

	public void advertising(Advertising advertising);

	public List showadvertising(Advertising advertising);

	public void qnapage2(Question question);

	public List showquestion(Question question);

	public void message(Message message);
}
