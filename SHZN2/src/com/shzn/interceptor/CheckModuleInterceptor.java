package com.shzn.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.shzn.entity.Module;

public class CheckModuleInterceptor implements HandlerInterceptor {

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
		//获取用户当前要访问的模块
		Integer currentModule = (Integer)
				request.getSession().getAttribute("currentModule");
		//获取用户有权限的所有模块
		List<Module> modules = (List<Module>)
				request.getSession().getAttribute("modules");
		//判断用户是否拥有当前要访问的模块权限
		for(Module m : modules){
			if(m.getModule_id() == currentModule) {
				//有权限的模块包含了当前模块，可以访问
				return true;
			}
		}
		//循环结束，没有返回true，说明没有权限
		response.sendRedirect(request.getContextPath() +"/login/nopower.do");
		return false;
	}
	
}
