package org.com.controller;

import org.com.model.User;
import org.com.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {

	@Autowired
	RegisterService registerService;

	ModelAndView mv = null;

	public ModelAndView registerUser(@ModelAttribute("registerUser") User user) {
		mv = new ModelAndView();
		try {
			registerService.registerUser(user);
			mv.addObject("status", "true");
		} catch (Exception e) {
			mv.addObject("status", "false");
			mv.addObject("reason", e.getMessage());
		}
		return mv;
	}

}
