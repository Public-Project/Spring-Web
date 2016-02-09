package org.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	@RequestMapping("/login")
	@ResponseBody
	public ModelAndView login(@RequestParam("userName") String userName, @RequestParam("password") String password) {
		ModelAndView mv = new ModelAndView();
		if (userName.equals("rishabh") && password.equals("123")) {
			mv.setViewName("home");
		} else {
			mv.addObject("error", "Invalid Credentials");
		}
		return mv;
	}

}
