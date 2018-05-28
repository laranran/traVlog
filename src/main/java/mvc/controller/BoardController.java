package mvc.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import mvc.dto.Hashtag;
import mvc.dto.Member;
import mvc.service.MemberService;
import spring.board.email.Email;
import spring.board.email.EmailSender;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Autowired
	MemberService memberService;
	@Autowired
	EmailSender emailSender;
	@Autowired
	Email email;
	@Autowired
	Hashtag hashtag;
	
	
	@RequestMapping(value = "/Manage_Page/home.do", method = RequestMethod.GET)
	public String ManageHome() {
		logger.info("관리자페이지 GET요청");
		return "Manage_Page/home";
	}

	// Login 파트
	@RequestMapping(value = "/traVlog/login.do", method = RequestMethod.GET)
	public void login() {
		logger.info("로그인페이지 GET요청");
	}
	
	@RequestMapping(value = "/traVlog/login.do", method = RequestMethod.POST)
	public String login(Member member, HttpSession session, Model model) {
		if (memberService.memberCheck(member) == 1) {
			//아이디와 네임 가져오기
			Member sessionMember = memberService.getMemberOne(member);
			// 로그인 .. memberService 가져오고 아이디와 이름 세션 생성
			session.setAttribute("memid", sessionMember.getMemid());
			session.setAttribute("memname", sessionMember.getMemname());
			
			return "traVlog/main";
			
		} else {
			model.addAttribute("msg","비밀번호가 맞지 않거나 없는 아이디 입니다.");
			return "util/alert";
		}
	}
	
	@RequestMapping(value="/util/alert.do", method=RequestMethod.GET)
	public String alert() {
		
		return "util/alert";
	}
	//logout
//	@RequestMapping(value = "/traVlog/login.do", method = RequestMethod.GET)
//	public String logout(Member member, HttpSession session) {
//		session.invalidate();
//		return "traVlog/login";
//	}
	
	@RequestMapping(value = "/traVlog/main.do", method = RequestMethod.GET)
	public void main() {
		
		
		logger.info("메인페이지 GET요청");
	}

	@RequestMapping(value = "/traVlog/settingprofile.do", method = RequestMethod.GET)
	public void settingProfile() {
		logger.info("세팅페이지 프로필 GET요청");
	}
	
	@RequestMapping(value = "/traVlog/settingpass.do", method = RequestMethod.GET)
	public void settingPass() {
		logger.info("세팅페이지 비밀번호 변경 GET요청");
	}

	@RequestMapping(value = "/traVlog/mypage.do", method = RequestMethod.GET)
	public void mypage() {
		logger.info("마이페이지 GET요청");
	}

	@RequestMapping(value = "/traVlog/find.do", method = RequestMethod.GET)
	public void find() {
		logger.info("아이디/패스워드찾기 페이지 GET요청");
	}
	
	@RequestMapping(value = "/traVlog/findid.do", method = RequestMethod.POST)
	public ModelAndView findid(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Exception{
		logger.info("아이디 찾기");
		ModelAndView mav;
        String name=(String) paramMap.get("idmemname");
        String e_mail=(String) paramMap.get("idmememail");
        System.out.println(paramMap);
        String id=memberService.findId(paramMap);
        System.out.println(id);
        if(id!=null) {
            email.setContent(name+"님의 아이디는 "+id+" 입니다.");
            email.setReceiver(e_mail);
            email.setSubject("[traVlog] "+name+"님 아이디 찾기 메일입니다.");
            emailSender.SendEmail(email);
//            mav= new ModelAndView("redirect:/traVlog/login.do");
          mav= new ModelAndView("util/alert");
          mav.addObject("msg", "ID찾기 성공 이메일을 확인해주세요.");
          mav.addObject("url", "/traVlog/login.do");
           return mav;
        }else {
        	mav= new ModelAndView("util/alert");
            mav.addObject("msg", "ID찾기 실패 회원정보를 확인해주세요.");
            mav.addObject("url", "/traVlog/find.do");
             return mav;
        }

	}
	
	@RequestMapping(value = "/traVlog/findpw.do", method = RequestMethod.POST)
	public ModelAndView findpw(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Exception{
		logger.info("비밀번호 찾기");
		ModelAndView mav;
        String name=(String) paramMap.get("pwmemname");
        String id=(String) paramMap.get("pwmemid");
        String e_mail=(String) paramMap.get("pwmememail");
        String pw=memberService.findPw(paramMap);
        System.out.println(pw);
        if(pw!=null) {
            email.setContent(name+"님의 비밀번호는 "+pw+" 입니다.");
            email.setReceiver(e_mail);
            email.setSubject("[traVlog] "+name+"님 비밀번호 찾기 메일입니다.");
            emailSender.SendEmail(email);
            mav= new ModelAndView("util/alert");
            mav.addObject("msg", "PW찾기 성공 이메일을 확인해주세요.");
            mav.addObject("url", "/traVlog/login.do");
             return mav;
          }else {
          	mav= new ModelAndView("util/alert");
              mav.addObject("msg", "PW찾기 실패 회원정보를 확인해주세요.");
              mav.addObject("url", "/traVlog/find.do");
               return mav;
          }

	}

	@RequestMapping(value = "/traVlog/write.do", method = RequestMethod.GET)
	public void write() {
		logger.info("글쓰기페이지 GET요청");
	}

	@RequestMapping(value = "/traVlog/join.do", method = RequestMethod.GET)
	public void join() {
		logger.info("회원가입페이지 GET요청");
	}
	@RequestMapping(value = "/traVlog/join.do", method = RequestMethod.POST)
	public String join(Member member) {
		logger.info("회원가입 요청");
		logger.info(member.toString());
		
		memberService.createMember(member);
		logger.info("회원가입 완료");
		return "traVlog/login";
	}
	
	//아이디 중복체크
	@RequestMapping(value="/idcheck.do", method=RequestMethod.POST)
		@ResponseBody
	public Map<Object,Object> idcheck(@RequestBody String memid){
		logger.info("아이디 중복 체크 요청");
		int count = 0;
		Map<Object,Object> map = new HashMap<>();
		count = memberService.idcheck(memid);
		map.put("count", count);
		logger.info("중복체크값"+count);
		return map;
	}
	
	//닉네임 중복체크
		@RequestMapping(value="/nickcheck.do", method=RequestMethod.POST)
			@ResponseBody
		public Map<Object,Object> nickcheck(@RequestBody String memnick){
			logger.info("닉네임 중복 체크 요청");
			int count = 0;
			Map<Object,Object> map = new HashMap<>();
			count = memberService.nickcheck(memnick);
			map.put("count", count);
			logger.info("중복체크값"+count);
			return map;
		}
}
