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

import mvc.dto.Advertising;
import mvc.dto.Board;
import mvc.dto.Files;
import mvc.dto.Member;
import mvc.dto.Message;
import mvc.dto.Question;
import mvc.dto.Report;
import mvc.service.MemberService;
import mvc.service.MessageService;
import mvc.service.MypageService;

@Controller
public class MypageController {
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);

	@Autowired MypageService mypageService;
	@Autowired MessageService messageService;
	@Autowired MemberService memberService;
	
	
	@RequestMapping(value = "/traVlog/mypage.do", method = RequestMethod.GET)
	public void mypage(HttpSession session, Model model, Member member) {
		
		logger.info("마이페이지 GET요청");
			
		String memnick = member.getMemnick();
		logger.info(memnick);
		
		Member selectmember = mypageService.selectMember(memnick);
		List selectpage = mypageService.selectPage(memnick);
		List selectpic = mypageService.selectPic(memnick);
		
		model.addAttribute("selectMember", selectmember);
		model.addAttribute("selectpage", selectpage);
		model.addAttribute("selectpic", selectpic);
		
	}
	
	// 마이페이지 내 글 상세보기
	@RequestMapping(value = "/traVlog/mycontent.do", method = RequestMethod.GET)
	public void mycontent(HttpSession session, Model model, int bodno) {
		logger.info("마이페이지 상세보기");
		
		logger.info("board:"+bodno);
		
		Board selectContent = mypageService.selectContent (bodno);
		List selectContentPic = mypageService.selectContentPic(bodno);
		
		model.addAttribute("selectContent", selectContent);
		model.addAttribute("selectContentPic", selectContentPic);
		
	
	}
	
	
	
	
	 //받은 메세지 리스트
	@RequestMapping(value = "/traVlog/getmessage.do", method = RequestMethod.GET)
	public String getmessage(Model model, HttpSession session) {
		String yourId=(String)session.getAttribute("memid");
		List mList = messageService.getMessageList(yourId);
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
		public String getmessage2(Model model,HttpSession session) {
			String myId = (String)session.getAttribute("memid");
			List sList = messageService.sentMessageList(myId);
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
//	
//	//메세지 보내기
//	@RequestMapping(value="/traVlog/sendmessage.do",method=RequestMethod.GET)
//	public String sendingmessage(Message message,HttpSession session,Member member) {
//		System.out.println("www : "+message);
////message.setMemid("memid");
//message.setMesname("mesname");
//		System.out.println("변한 객체 :"+message);
//		memberService.sendingmessage(message);
//		
//		return "traVlog/getmessage2.do";

//	}
	//메세지 보내기
		@RequestMapping(value="/traVlog/sendmessage.do",method=RequestMethod.POST)
		public String sendingmessage(Message message,HttpSession session,Member member) {
			System.out.println("www : "+message);
//			message.setMemid("memid");
			message.setMesname("mesname");
			System.out.println("변한 객체 :"+message);
			memberService.sendingmessage(message);
			
			return "redirect:/traVlog/getmessage2.do";

		}
	
	
	
	
//	//남한테 메세지 보내기 
//			@RequestMapping(value="/traVlog/sendmessage2.do",method=RequestMethod.GET)
//			public void sending(Message message,Model model) {
//				System.out.println("message : "+message);
//				model.addAttribute("message", message);
//			}
//			
//	
//			//남한테 메세지 보내기 
//	@RequestMapping(value="/traVlog/sendmessage2.do",method=RequestMethod.POST)
//	public String sendmessage2(Message message, HttpSession session) {
//		System.out.println("message :" + message);
//		memberService.message(message);
//		return "redirect:/traVlog/otherpage.do";
//	}

		
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
			return "redirect:/traVlog/report.do";
	}

	
	
	//광고1
			@RequestMapping(value="/traVlog/advertising.do",method=RequestMethod.GET)
			public void advert(Member member,Model model) {
				System.out.println("광고 : "+member);
				model.addAttribute("member", member);
			}
			
	
	//광고2
	@RequestMapping(value="/traVlog/advertising.do",method=RequestMethod.POST)
	public String advertising(Advertising advertising, HttpSession session) {
		System.out.println("광고보내기 :" + advertising);
		memberService.advertising(advertising);
		return "traVlog/advertising";
	}
		
	//광고 내역 보여주기
	@RequestMapping(value="/traVlog/showadvertising.do")
	public String showadvertising(Advertising advertising, Model model,HttpSession session) {
		logger.info("광고내역" + advertising);
		advertising.setAdvid((String)session.getAttribute("memid"));
	List a_list = memberService.showadvertising(advertising);
	logger.info("리스트 :"+ a_list);
	model.addAttribute("a_list", a_list);
	return "traVlog/showadvertising";
	}
	
		
	//결제하기
	@RequestMapping(value="/traVlog/payment.do", method=RequestMethod.GET)
	public void payment(HttpSession session, Model model,Advertising ad) {
		Member member = new Member();
		logger.info((String)session.getAttribute("memid"));
		member.setMemid((String)session.getAttribute("memid")); 
		member = memberService.getMemberByMemId(member);
		Advertising adInfo = new Advertising();
		adInfo.setAdvid((String)session.getAttribute("memid"));
		adInfo.setAdvno(ad.getAdvno());
		adInfo = memberService.getAdvertisingByAd(adInfo);
		
		model.addAttribute("adInfo",adInfo);
		model.addAttribute("member",member);
	}
		

//	//남의 페이지 보여주기
//	@RequestMapping(value="/traVlog/otherpage.do")
//	public String otherpage(Model model, Member member) {
//		model.addAttribute("member",member);
//	return "traVlog/otherpage";
//	}


	//Qna 페이지 (질문 페이지)
	@RequestMapping(value="/traVlog/qnapage2.do", method=RequestMethod.GET)
	public void qnapage(Member member, Model model) {
		System.out.println("문의");
		model.addAttribute("member",member);
		
	}

	//Qna 페이지 (질문 페이지)
	@RequestMapping(value="/traVlog/qnapage2.do",method=RequestMethod.POST)
	public String qnapage2(Question question, HttpSession session) {
		System.out.println("질문보내기 :" + question);
	memberService.qnapage2(question);
	return "redirect:/traVlog/qnapage2.do";
	}
	
	
	//질문 내역 보여주기
	@RequestMapping(value="/traVlog/showquestion.do")
	public String showquestion(Question question, Model model) {
		logger.info("질문내역" + question);
	List q_list = memberService.showquestion(question);
	logger.info("질문리스트 :"+ q_list);
	model.addAttribute("q_list", q_list);
	return "traVlog/showquestion";
	}

	
	

}


