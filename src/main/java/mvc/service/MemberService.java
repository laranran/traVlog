package mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.MemberDao;
import mvc.dto.Member;

@Service
public class MemberService {
	@Autowired MemberDao memberDao;
	
	//1이면 데이타 일치, 0이면 데이타 없음
	public int memberCheck(Member member) {
		return memberDao.memberCount(member);
	}

	public Member getMemberOne(Member member) {
		return memberDao.gerMemberOne(member);
	}
}
