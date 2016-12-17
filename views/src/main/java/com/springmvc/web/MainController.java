package com.springmvc.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import static org.springframework.web.bind.annotation.RequestMethod.*;

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
	public String formBinding() {
		return "formbinding";
	}
}

