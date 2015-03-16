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
		//��ȡ�û���ǰҪ���ʵ�ģ��
		Integer currentModule = (Integer)
				request.getSession().getAttribute("currentModule");
		//��ȡ�û���Ȩ�޵�����ģ��
		List<Module> modules = (List<Module>)
				request.getSession().getAttribute("modules");
		//�ж��û��Ƿ�ӵ�е�ǰҪ���ʵ�ģ��Ȩ��
		for(Module m : modules){
			if(m.getModule_id() == currentModule) {
				//��Ȩ�޵�ģ������˵�ǰģ�飬���Է���
				return true;
			}
		}
		//ѭ��������û�з���true��˵��û��Ȩ��
		response.sendRedirect(request.getContextPath() +"/login/nopower.do");
		return false;
	}
	
}
