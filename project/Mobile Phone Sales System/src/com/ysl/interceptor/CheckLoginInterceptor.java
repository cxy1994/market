package com.ysl.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.ysl.entity.User;

public class CheckLoginInterceptor implements
		org.springframework.web.servlet.HandlerInterceptor {

	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub

	}

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object arg2) throws Exception {
		// TODO Auto-generated method stub
		User user=(User)request.getSession().getAttribute("frontuser");
		if(user==null){
			response.sendRedirect(request.getContextPath()+"/front/front.do");
			return false;
		}
		else{
			return true;
		}
		
	}

}
