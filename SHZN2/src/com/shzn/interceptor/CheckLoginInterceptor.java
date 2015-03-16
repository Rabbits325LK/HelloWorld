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
		 * ���غ󷽷���������Controllerҵ�񷽷�֮���������
		 */
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub
		
		/* 
		 * ����ǰ������������Controllerҵ�񷽷�֮ǰ��������
		 */
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object obj) throws Exception {
		// TODO Auto-generated method stub
		//��session��ȡ���û���¼��Ϣ
		SHZN_Admin admin = (SHZN_Admin)
				request.getSession().getAttribute("admin");
		//ͨ����¼��Ϣ���ж��û��Ƿ��Ѿ���¼
		if(admin == null){
			//û��¼���߻ص�¼ҳ
			//http://localhost:8088/NETCTOSS/login/toLogin.do
		response.sendRedirect(request.getContextPath()+"/login/index.do");
		return false;
		}else{
			//�ѵ�¼����������
			return true;
		}
	}
	
	
}
