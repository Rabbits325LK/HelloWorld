package com.shzn.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.shzn.dao.DateShipDao;
import com.shzn.entity.DateShip;
import com.shzn.util.DateUtil;

public class DateShipTest {
	
	//@Test
	public void toFindAll(){
		DateShip dateship = new DateShip();
		int specitifedDay = Integer.parseInt(dateship.getDATESHIP_SPECITIFEDDAY());
		int[] arr = new int[23];
		System.out.println(specitifedDay);
		ApplicationContext ctx = 
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		DateShipDao dao = ctx.getBean(DateShipDao.class);
		List<DateShip> list = dao.findAll(specitifedDay);
		for(DateShip ds : list){
			System.out.println(ds.getDateShip_id()+"--"+ds.getDateShip_name());
			System.out.println(ds.getT1());
		}
		System.out.println("-------------------");
	}
	
	//@Test
	public void toUpdateTest(){
		toUpdateNum(3,7);//A
	}
	
	public void toUpdateNum(int startime, int endtime){//A-B
		Map<String, Object> TestMap = new HashMap<String, Object>();
		int n = endtime+1;
		for(int i=startime;i<n;i++){
			TestMap.put("t"+i, 2);//B-C
		}
		toUpdate(TestMap);
	}
	
	public void toUpdate(Map<String,Object> KV){//C
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		DateShipDao dao = ctx.getBean(DateShipDao.class);
		
		String dateShip_name = "荣超";
		DateShip dateship = new DateShip();
		//int specitifedDay = Integer.parseInt(dateship.getDATESHIP_SPECITIFEDDAY());
		Map<String,Object> DateShipX = toFindByNames(dateShip_name);
		Set set = KV.entrySet();
		java.util.Iterator it = KV.entrySet().iterator();
		while(it.hasNext()){
			java.util.Map.Entry entry = (java.util.Map.Entry)it.next();
			DateShipX.put((String) entry.getKey(), entry.getValue());
		}
		dao.update(DateShipX);
		for(int i=1;i<25;i++){
			String t = "t"+i;
			/*String tt = "dateshpi.getT"+i;
			DateShipX.put(t,tt);*/
			System.out.println(t+":"+DateShipX.get(t));
		}
		System.out.println(DateShipX.get("specitifedDay"));
		System.out.println(DateShipX.get("dateship_id"));
		System.out.println("ok!");
	}
	
	//取出一条船艇所有时间使用情况
	//@Test
	public Map<String,Object> toFindByNames(String dateShip_name){
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		DateShipDao dao = ctx.getBean(DateShipDao.class);
		Map<String,Object> DateShipX = new HashMap<String,Object>();
		Map<String,Object> DateShipN = new HashMap<String,Object>();
		int specitifedDay = Integer.parseInt(DateShip.getDATESHIP_SPECITIFEDDAY());
		DateShipX.put("specitifedDay", specitifedDay);
		DateShipX.put("dateShip_name", dateShip_name);
		DateShip dateship = new DateShip();
		dateship = dao.findByNames(DateShipX);
		DateShipX.put("t1", dateship.getT1());
		DateShipX.put("t2", dateship.getT2());
		DateShipX.put("t3", dateship.getT3());
		DateShipX.put("t4", dateship.getT4());
		DateShipX.put("t5", dateship.getT5());
		DateShipX.put("t6", dateship.getT6());
		DateShipX.put("t7", dateship.getT7());
		DateShipX.put("t8", dateship.getT8());
		DateShipX.put("t9", dateship.getT9());
		DateShipX.put("t10", dateship.getT10());
		DateShipX.put("t11", dateship.getT11());
		DateShipX.put("t12", dateship.getT12());
		DateShipX.put("t13", dateship.getT13());
		DateShipX.put("t14", dateship.getT14());
		DateShipX.put("t15", dateship.getT15());
		DateShipX.put("t16", dateship.getT16());
		DateShipX.put("t17", dateship.getT17());
		DateShipX.put("t18", dateship.getT18());
		DateShipX.put("t19", dateship.getT19());
		DateShipX.put("t20", dateship.getT20());
		DateShipX.put("t21", dateship.getT21());
		DateShipX.put("t22", dateship.getT22());
		DateShipX.put("t23", dateship.getT23());
		DateShipX.put("t24", dateship.getT24());
		
	/*	for(int i=1;i<25;i++){
			String t = "t"+i;
			String tt = "dateshpi.getT"+i;
			DateShipX.put(t,tt);
			System.out.println(DateShipX.get(t));
		}*/
		return DateShipX;
	}
	
	
	/**
	 * 创建新的记录表并同步dateship表的数据
	 */
	//@Test
	public void tospacitifedDayNumTest(){
		DateUtil du = new DateUtil();
		int spacifiedDay = Integer.parseInt(du.getSpecifiedDayAfter(4));
		System.out.println(spacifiedDay);
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		DateShipDao dao = ctx.getBean(DateShipDao.class);
		dao.createDateShip(spacifiedDay);
		System.out.println("1..OK");
		String tablename = "dateship" + spacifiedDay;
		dao.updateDateship(spacifiedDay);
		System.out.println("ok");
		
	}
	
	/**
	 * 根据船名，日期查询
	 */
	//@Test
	public void toDateShipFindByName(){
		DateUtil du = new DateUtil();
		ApplicationContext ctx = 
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		DateShipDao dao = ctx.getBean(DateShipDao.class);
		DateShip ds = new DateShip();
		ds.setDateShip_name("荣超");
		int spacifiedDay = Integer.parseInt(du.getSpecifiedDayAfter(7));
		ds.setSpecitifedDay(spacifiedDay);
		ds = dao.findByName(ds);
		System.out.println(ds.getDateShip_id());
		System.out.println(ds.getDateShip_name());
		System.out.println(ds.getT1());
		System.out.println(ds.getT2());
	}
	
	
}
