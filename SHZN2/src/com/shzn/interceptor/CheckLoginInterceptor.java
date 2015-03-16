package com.shzn.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.shzn.entity.SHZN_Admin;

public class CheckLoginInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		/* 
		 * 拦截后方法，即调用Controller业务方法之后调用它。
		 */
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub
		
		/* 
		 * 拦截前方法，即调用Controller业务方法之前调用它。
		 */
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object obj) throws Exception {
		// TODO Auto-generated method stub
		//从session中取出用户登录信息
		SHZN_Admin admin = (SHZN_Admin)
				request.getSession().getAttribute("admin");
		//通过登录信息，判断用户是否已经登录
		if(admin == null){
			//没登录，踢回登录页
			//http://localhost:8088/NETCTOSS/login/toLogin.do
		response.sendRedirect(request.getContextPath()+"/login/index.do");
		return false;
		}else{
			//已登录，继续访问
			return true;
		}
	}
	
	
}
