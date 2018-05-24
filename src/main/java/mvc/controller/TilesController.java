package mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TilesController {

	@RequestMapping(value="/test.do", method=RequestMethod.GET)
	public String main() {
		
//		return new View();
		
//		이렇게 쓰면 url을 해석해서 띄우는게 아니라 viewname을 해석해서 찾아간다.
		return "tiles/main";
	}
	
/*	
	@RequestMapping(value="/tiles/main", method=RequestMethod.GET)
	public void main() {
		
		
//		이렇게 쓰면 url을 해석해서 찾아간다.
	}
*/
}
