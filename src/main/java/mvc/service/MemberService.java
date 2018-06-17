package mvc.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.MemberDao;
import mvc.dao.MessageDao;
import mvc.dto.Advertising;
import mvc.dto.Member;
import mvc.dto.Message;
import mvc.dto.Profile;
import mvc.dto.Question;
import mvc.dto.Report;

@Service
public class MemberService {
	@Autowired MemberDao memberDao;
	@Autowired MessageDao messageDao;
	
	//1이면 데이타 일치, 0이면 데이타 없음
	public int memberCheck(Member member) {
		return memberDao.memberCount(member);
	}

	public Member getMemberOne(Member member) {
		return memberDao.getMemberOne(member);
	}

	public void createMember(Member member) {
		memberDao.createMember(member);
	}

	public int idcheck(String memid) {
		return memberDao.idcheck(memid);
	}

	public int nickcheck(String memnick) {
		return memberDao.nickcheck(memnick);
	}

	public String findId(Map<String, Object> paramMap) {
		return memberDao.findId(paramMap);
	}
	
	public String findPw(Map<String, Object> paramMap) {
		return memberDao.findPw(paramMap);
	}

	public ArrayList<Member> MemberInfo(String memid) {
		return memberDao.MemberInfo(memid);
	}

	public ArrayList<Profile> getProfile(String memid) {
		return memberDao.getProfile(memid);
	}
	
	 public void sendingmessage(Message message) {
		  messageDao.sendingmessage(message);
	   }
	/*public void reportProc(Member member,Report report) {
		return memberDao.reportProc(member,report);
	}	*/

	public void report(Report report) {
		memberDao.report(report);
	}

	public void advertising(Advertising advertising) {
		memberDao.advertising(advertising);
		
	}

	public List showadvertising(Advertising advertising) {

		return memberDao.showadvertising(advertising);
	}

	public void qnapage2(Question question) {
	 memberDao.qnapage2(question);
		
	}

	public List showquestion(Question question) {
		return memberDao.showquestion(question);
	
	}

	public void message(Message message) {
		memberDao.message(message);
	}



}
