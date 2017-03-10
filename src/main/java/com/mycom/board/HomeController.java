package com.mycom.board;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	
	@Autowired
	private DbService dbservice;
	
	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public String home(Model model) {
		return "home";
	}
	
	@RequestMapping(value = "/portfolio.do", method = RequestMethod.GET)
	public String portfolio(Model model) {
		return "portfolio";
	}

	@RequestMapping(value = "/shop.do", method = RequestMethod.GET)
	public String life(Model model) {
		return "shop";
	}
	
	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public String list(Model model) {	
		return "/list/list_home";
	}
	
	@RequestMapping(value = "/write.do", method = RequestMethod.GET)
	public String write(Model model) {	
		return "/list/write";
	}
	
	@RequestMapping(value = "/view.do", method = RequestMethod.GET)
	public String view(Model model) {	
		return "/list/view";
	}
	@RequestMapping(value="/textView")
	public @ResponseBody Map<String , Object> textView(HttpServletRequest req) { 
	    return dbservice.textView(req);
	}
	
	@RequestMapping(value="/getJsonByMap")
	public @ResponseBody Map<String , Object> getJsonByMap(HttpServletRequest req) { 
	    return dbservice.getBlockList(req);
	}
	
	@RequestMapping(value="/insert.do", method = RequestMethod.POST)
	public @ResponseBody Map<String , Object> insert(HttpServletRequest request) { 
		HashMap<String , Object> map = new HashMap<String , Object>();
		System.out.println("제목:"+request.getParameter("title"));
		System.out.println("내용:"+request.getParameter("text"));		
		System.out.println("유저:"+request.getParameter("user_id"));
		dbservice.insert(request);
		map.put("result", 0);
		return map;
	}
}
