package mvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mvc.dto.Member;
import mvc.dto.Message;
import mvc.dto.Report;
import mvc.service.MemberService;
import mvc.service.MessageService;

@Controller
public class MypageController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Autowired
	MemberService memberService;
	@Autowired
	MessageService messageService;
	
	
	/*
	@RequestMapping(value="/traVlog/settingprofile.do", method=RequestMethod.GET)
	   public void settingprofile() {}
	   
	   @RequestMapping(value="/traVlog/settingprofile.do", method=RequestMethod.POST)
	   public String settingprofileproc(Member member, HttpSession session) {
	      member.setMemid((String)session.getAttribute("memid"));
	      return "redirect:traVlog/mypage.do";
	   }
	   */
	   
	  /* @RequestMapping(value="/traVlog/updateprofile.do", method=RequestMethod.GET)
	   public String update(Member member, HttpSession session, Model model) {
	      member = memberService.getprofile(member);
	      session.setAttribute("member", memberService.updateprofile(member));
	      model.addAttribute("member", member);
	      return "traVlog/updateprofile";
	   }
	   
	   @RequestMapping(value="/traVlog/updateproflie.do", method=RequestMethod.POST)
	   public String updateprofileproc(Member member) {
	      memberService.updateprofile(member);
	      return "redirect:/traVlog/settingprofile.do?memberid="+member.getMemid();
	   }
	   
	  */
	 //받은 메세지 리스트
		@RequestMapping(value = "/traVlog/getmessage.do", method = RequestMethod.GET)
		public String getmessage(Model model) {
			List mList = messageService.getMessageList();
			System.out.println(mList);
			model.addAttribute("mList", mList);
			return "traVlog/getmessage";
		}
		
		
		//받은 메세지함
		@RequestMapping(value = "/traVlog/getmessage.do", method = RequestMethod.POST)
		public String sendmessage(Model model, Message message) {
			model.addAttribute("message",message);
			
			return "traVlog/getmessage";
		}
		
		
		
		
		 //보낸 메세지 리스트
			@RequestMapping(value = "/traVlog/getmessage2.do", method = RequestMethod.GET)
			public String getmessage2(Model model) {
				List sList = messageService.sentMessageList();
				System.out.println(sList);
				model.addAttribute("sList", sList);
				return "traVlog/getmessage2";
			}
		
		
	
		
		//보낸 메세지함
		@RequestMapping(value="/traVlog/getmessage2.do", method=RequestMethod.POST)
		public String getmessage2(Model model, Message message) {
			System.out.println("보낸거");
			
			model.addAttribute("message",message);
			
			return "traVlog/getmessage2";
			
		}
		
	
		
		
		
		//메세지 상세보기
		@RequestMapping(value="/traVlog/messageDetail.do")
		public String messageDetail(Message message,Model model) {
			logger.info("처음 메시지 : "+message);
			List m_list = messageService.getMessageDetail(message);
			logger.info("메시지"+m_list);
			
			model.addAttribute("m_list", m_list);
			return "traVlog/messageDetail";
		}
		
		//메세지 보내기
		@RequestMapping(value="/traVlog/sendmessage.do")
		public String sendingmessage(Message message,HttpSession session) {
			System.out.println("www : "+message);
			message.setMemid("memid");
			System.out.println("변한 객체 :"+message);
			memberService.sendingmessage(message);
			
			return "redirect:/traVlog/mypage.do";
	
		}
		
		
		
		
		
	//신고하기
		@RequestMapping(value="/traVlog/report.do",method=RequestMethod.GET)
		public void repor(Member member,Model model) {
			System.out.println("신고할 사용자 아이디 : "+member);
			model.addAttribute("member", member);
		}
		
		
		@RequestMapping(value="/traVlog/report.do",method=RequestMethod.POST)
		public String report(Report report, HttpSession session) {
			logger.info("신고됐나");
			System.out.println("신고는?: "+ report);
			memberService.report(report);
				return "redirect:/traVlog/mypage.do";
		}
/*		
		@RequestMapping(value="/traVlog/report.do", method=RequestMethod.POST)
		public String reportProc(Member member) {
			memberService.report(member);
			
			return "redirect:/traVlog/mypage.do";
		}
		
	*/
		//광고
		@RequestMapping(value="/traVlog/advertising.do")
		public void advertising() {
			
		}
		
		@RequestMapping(value="/traVlog/otherpage.do")
		public void otherpage() {
			
		}
	
	
	
}