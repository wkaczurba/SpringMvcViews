package com.springmvc.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import static org.springframework.web.bind.annotation.RequestMethod.*;
import com.springmvc.User;

@Controller
public class MainController {

	@RequestMapping(value="/", method=GET)
	public String root() {
		return "index";
	}
	
	@RequestMapping(value="/hello", method=GET)
	public String hello() {
		return "hello";
	}
	
	@RequestMapping(value="/formbinding", method=GET)
	public String formBinding(Model model) {
		User user = new User("Joe", "Navalsky", "joe@navalsky.com");
		
		model.addAttribute(user);
		return "formbinding";
	}
}

