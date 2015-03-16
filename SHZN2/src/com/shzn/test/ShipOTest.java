package com.shzn.test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.shzn.dao.ShipODao;
import com.shzn.entity.ShipO;
import com.shzn.entity.page.ShipOPage;

public class ShipOTest {
	
	//@Test
	public void findPage(){
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		ShipODao dao = ctx.getBean(ShipODao.class);
		ShipOPage page = new ShipOPage();
		page.setCurrentPage(1);
		List<ShipO> list = dao.findByPage(page);
		for(ShipO o : list){
			System.out.println(o.getAdmin_name());
			System.out.println(o.getShip_id());
			System.out.println(o.getShip_name());
		}
		
	}
	
	@Test
	public void save(){
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		ShipODao dao = ctx.getBean(ShipODao.class);
		ShipO shipo = new ShipO();
		shipo.setAdmin_name("Admin");
		shipo.setTimenum(1);
		shipo.setShip_role(2);
		shipo.setShip_name("»Ÿ≥¨");
		dao.save(shipo);
		System.out.println("ok");
	}
}
