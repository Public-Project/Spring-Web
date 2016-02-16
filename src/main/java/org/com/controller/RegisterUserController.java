package org.com.controller;

import java.util.Map;

import org.com.model.User;
import org.com.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterUserController {

	@Autowired
	RegisterService registerService;

	ModelAndView mv = null;

	@RequestMapping(value = "/registerUser", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> registerUser(@RequestBody User user) {
		return registerService.registerUser(user);
	}

	@RequestMapping(value = "/redirectActivation", method = RequestMethod.GET)
	public ModelAndView redirectToActivation(@RequestParam("activation_id") String userId) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("activation_id", userId);
		mv.setViewName("resetPassword");
		return mv;
	}

}
