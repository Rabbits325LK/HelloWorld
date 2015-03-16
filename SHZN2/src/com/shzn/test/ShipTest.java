package com.shzn.test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.shzn.dao.ShipDao;
import com.shzn.dao.ShipODao;
import com.shzn.entity.Ship;
import com.shzn.entity.ShipO;

public class ShipTest {

	//@Test
	public void findAll(){
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		ShipDao dao = ctx.getBean(ShipDao.class);
		List<Ship> list = dao.findAll();
		for(Ship s : list){
			System.out.println("-------start--------");
			System.out.println("ID:"+s.getShip_id());
			System.out.println("NAME:"+s.getShip_name());
			System.out.println("SIZE:"+s.getShip_size());
			System.out.println("TYPE:"+s.getShip_type());
			System.out.println("IMG:"+s.getShip_img());
			System.out.println("Capacity:"+s.getShip_Capacity());
			System.out.println("------------end--------------");
		}
	}
	
	//@Test
	public void save(){
		ApplicationContext ctx = 
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		ShipDao dao = ctx.getBean(ShipDao.class);
		ShipODao daoo = ctx.getBean(ShipODao.class);
		Ship s = dao.findById(2);
		ShipO so = new ShipO();
		so.setAdmin_name("Admin");
		so.setShip_name(s.getShip_name());
		so.setTimenum(1);
		so.setShip_role(1);
		daoo.save(so);
		System.out.println("Ok");
	}
	
	//@Test
	public void SaveNewShip(){
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		ShipDao dao = ctx.getBean(ShipDao.class);
		Ship s = new Ship();
		s.setShip_name("Ã»Éµ1ºÅ");
		s.setShip_img("");
		s.setShip_size("43");
		s.setShip_type("·«´¬");
		s.setShip_Capacity("10");
		dao.save(s);
		System.out.println("ok");
	}
	
	//@Test
	public void toShipDelete(){
		ApplicationContext ctx = 
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		ShipDao dao = ctx.getBean(ShipDao.class);
		dao.delete(2);
		System.out.println("ok");
	}
	
	
	//@Test
	public void updateShip(){
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		ShipDao dao = ctx.getBean(ShipDao.class);
		Ship s = new Ship ();
		s.setShip_id(4);
		s.setShip_name("Ã·É³3ºÅ");
		s.setShip_size("14");
		s.setShip_type("·«´¬");
		s.setShip_Capacity("3");
		s.setShip_img("");
		dao.update(s);
		System.out.println("ok");
	}
	
	//@Test
	public void findById(){
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		ShipDao dao = ctx.getBean(ShipDao.class);
		Ship s = dao.findById(4);
		System.out.println(s.getShip_name());
		System.out.println(s.getShip_size());
		System.out.println(s.getShip_type());
		System.out.println(s.getShip_Capacity());
	}
}
