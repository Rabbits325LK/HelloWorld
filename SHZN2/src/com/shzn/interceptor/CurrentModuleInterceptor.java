package com.shzn.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 *	判断当前访问的模块
 */
public class CurrentModuleInterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object obj) throws Exception {
		// TODO Auto-generated method stub
		String url = request.getRequestURL().toString();
		
		int currentModule = 0; //默认为0，代表index首页
		if(url.contains("root")) {
			currentModule = 2;
		} else if(url.contains("ship")) {
			currentModule = 3;
		} else if(url.contains("shipo")) {
			currentModule = 3;
		} else if(url.contains("test")){
			currentModule = 1;
		}
		
		request.getSession().setAttribute("currentModule", currentModule);
		return true;
	}

}
