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

import mvc.dto.Board;
import mvc.dto.Files;
import mvc.service.MypageService;

@Controller
public class MypageController {
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);

	@Autowired MypageService mypageService;
	
	@RequestMapping(value = "/traVlog/mypage.do", method = RequestMethod.GET)
	public void mypage(HttpSession session, Model model) {
		
		logger.info("마이페이지 GET요청");
			
		String memnick = (String) session.getAttribute("memnick");
		logger.info(memnick);
		
		List selectpage = mypageService.selectPage(memnick);
		List selectpic = mypageService.selectPic(memnick);
		
		model.addAttribute("selectpage", selectpage);
		model.addAttribute("selectpic", selectpic);
		
	}
	
	// 마이페이지 내 글 상세보기
	@RequestMapping(value = "/traVlog/mylist.do", method = RequestMethod.GET)
	public void mylist() {
		logger.info("마이페이지 상세보기");
	

	}
	
	// 마이페이지 내 글 상세보기
	@RequestMapping(value = "/traVlog/mycontent.do", method = RequestMethod.GET)
	public void mycontent(HttpSession session, Model model, int bodno) {
		logger.info("마이페이지 상세보기");
		
		logger.info("board:"+bodno);
		
		Board selectContent = mypageService.selectContent (bodno);
		Files selectContentPic = mypageService.selectContentPic(bodno);
		
		model.addAttribute("selectContent", selectContent);
		model.addAttribute("selectContentPic", selectContentPic);
		
		logger.info("사진파일"+selectContentPic.getFilsavefile());
		
	
	}
	

}


