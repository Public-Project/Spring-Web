package org.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NavigateController {

	@RequestMapping("/navigate")
	public String navigate() {
		System.out.println("Controller");
		return "target";
	}

	@RequestMapping("/")
	public String test() {
		System.out.println("t");
		return "target";
	}

}
