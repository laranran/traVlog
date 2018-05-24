package mvc.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
	
	@RequestMapping(value="/Manage_Page/home.do", method=RequestMethod.GET)
	   public String ManageHome(){
		return "Manage_Page/home";
	}
	
	@RequestMapping(value="/traVlog/login.do", method=RequestMethod.GET)
	   public String login(){
		return "traVlog/login";
	}
	
	@RequestMapping(value="/traVlog/main.do", method=RequestMethod.GET)
	   public void main(){
	}
	
	@RequestMapping(value="/traVlog/mypage.do", method=RequestMethod.GET)
	   public void mypage(){
	}
	
	@RequestMapping(value="/traVlog/find.do", method=RequestMethod.GET)
	   public void find(){
	}
	
	@RequestMapping(value="/traVlog/write.do", method=RequestMethod.GET)
	   public void write(){
	}
	
	@RequestMapping(value="/traVlog/join.do", method=RequestMethod.GET)
	   public void join(){
	}
	
	@RequestMapping(value="/traVlog/settingprofile.do", method=RequestMethod.GET)
	   public void settingprofile(){
	}
	
	@RequestMapping(value="/traVlog/settingpassword.do", method=RequestMethod.GET)
	   public void settingpassword(){
	}
	
}

