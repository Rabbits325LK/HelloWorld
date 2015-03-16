package com.shzn.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
/**
 * ȡ��ǰ���ڵ�ǰ��ĳһ��
 * @author Rabbits
 *
 */
public class DateUtil {

	public static String getSpecifiedDayBefore(int numDay) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String specifiedDay = sdf.format(new Date());
		Calendar c = Calendar.getInstance();
		Date date = null;
		try {
			
				date = new SimpleDateFormat("yyyyMMdd").parse(specifiedDay);
			} catch (java.text.ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			
		} 
		c.setTime(date);
		int day = c.get(Calendar.DATE);
		c.set(Calendar.DATE, day-numDay);
		
		String dayBefore = new SimpleDateFormat("yyyyMMdd").format(c.getTime());
		return dayBefore;
	}
	
	//��ǰʱ��ĺ��죺
	public static String getSpecifiedDayAfter(int numDay){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String specifiedDay = sdf.format(new Date());
		Calendar c = Calendar.getInstance();
		Date date = null;
		try {
			date = new SimpleDateFormat("yyyyMMdd").parse(specifiedDay);
		} catch (java.text.ParseException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		c.setTime(date);
		int day = c.get(Calendar.DATE);
		c.set(Calendar.DATE,day+numDay);
		
		String dayAfter = new SimpleDateFormat("yyyyMMdd").format(c.getTime());
		return dayAfter;
	}
}
