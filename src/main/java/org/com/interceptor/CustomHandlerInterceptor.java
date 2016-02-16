package org.com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;


public class CustomHandlerInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if (!request.getRequestURI().equals("/PaintaGun/") && !request.getRequestURI().equals("/PaintaGun")
				&& !request.getRequestURI().equals("/")) {
			ModelAndView mv = new ModelAndView("login");
			request.getSession();
			ModelAndViewDefiningException mvde = new ModelAndViewDefiningException(mv);
			throw mvde;
		}else if(!request.getRequestURI().equals("/logout/")){
			request.getSession().invalidate();
			ModelAndView mv = new ModelAndView("login");
			ModelAndViewDefiningException mvde = new ModelAndViewDefiningException(mv);
			throw mvde;
		}

		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub

	}

}
