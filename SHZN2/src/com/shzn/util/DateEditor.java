package com.shzn.util;

import java.beans.PropertyEditorSupport;
import java.sql.Date;
import java.text.SimpleDateFormat;

/**
 *	����Controller����ʱ��Spring�����ڵĴ����ࡣ
 *	��Ĭ�ϵ���������⣬�޷�����յ����ڣ��������
 *	дһ���Զ���Ĵ����ࡣ
 */
public class DateEditor extends PropertyEditorSupport {
	
	//Ĭ�ϵ����ڸ�ʽ
	private String pattern = "yyyy-MM-dd";
	
	public DateEditor() {
		
	}
	
	public DateEditor(String pattern) {
		this.pattern = pattern;
	}

	/* 
	 * @param text
	 * 	��ҳ���ı����е�ֵ
	 * ���ı��������ֵ��ʽ���������ø�Spring
	 */
	@Override
	public void setAsText(String text) 
			throws IllegalArgumentException {
		if(text == null || text.length() == 0) {
			//���������ǿ�ֵ���򽫿�ֵ���ø�Spring
			//SpringĬ�ϵĴ�����ʵ���Ͼ���������һ�����ű���
			setValue(null);
		} else {
			SimpleDateFormat sf = new SimpleDateFormat(this.pattern);
			String dateStr = sf.format(Date.valueOf(text));
			setValue(Date.valueOf(dateStr));
		}
	}

}
