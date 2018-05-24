package mvc.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mvc.dto.Member;
import mvc.service.MemberService;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Autowired
	MemberService memberService;

	@RequestMapping(value = "/Manage_Page/home.do", method = RequestMethod.GET)
	public String ManageHome() {
		return "Manage_Page/home";
	}

	// Login 파트
	@RequestMapping(value = "/traVlog/login.do", method = RequestMethod.GET)
	public void login() {
		
	}
	
	@RequestMapping(value = "/traVlog/login.do", method = RequestMethod.POST)
	public String login(Member member, HttpSession session) {
		logger.info(memberService.memberCheck(member)+"이 나옴.. 어디로갈까");
		if (memberService.memberCheck(member) == 1) {
			//아이디와 네임 가져오기
			Member sessionMember = memberService.getMemberOne(member);
			// 로그인 .. memberService 가져오고 아이디와 이름 세션 생성
			session.setAttribute("memid", sessionMember.getMemid());
			session.setAttribute("memname", sessionMember.getMemname());
			
			return "traVlog/main";
			
		} else {

			return "traVlog/login";
		}
	}

	//logout
//	@RequestMapping(value = "/traVlog/login.do", method = RequestMethod.GET)
//	public String logout(Member member, HttpSession session) {
//		session.invalidate();
//		return "traVlog/login";
//	}

	@RequestMapping(value = "/traVlog/main.do", method = RequestMethod.GET)
	public void main() {
	}

	@RequestMapping(value = "/traVlog/setting.do", method = RequestMethod.GET)
	public void setting() {
	}

	@RequestMapping(value = "/traVlog/mypage.do", method = RequestMethod.GET)
	public void mypage() {
	}

	@RequestMapping(value = "/traVlog/find.do", method = RequestMethod.GET)
	public void find() {
	}

	@RequestMapping(value = "/traVlog/write.do", method = RequestMethod.GET)
	public void write() {
	}

	@RequestMapping(value = "/traVlog/join.do", method = RequestMethod.GET)
	public void join() {
	}
	@RequestMapping(value = "/traVlog/join.do", method = RequestMethod.POST)
	public String join(Member member) {
		logger.info(member.toString());
		return "traVlog/login";
	}
}
