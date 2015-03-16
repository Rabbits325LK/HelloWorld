package com.shzn.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.shzn.dao.SHZN_AdminDao;
import com.shzn.entity.Role;
import com.shzn.entity.SHZN_Admin;
import com.shzn.entity.page.SHZN_AdminPage;


public class SHZN_AdminTest {

	//----------OK
	@Test
	public void testFindByPage() {
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		SHZN_AdminDao dao = ctx.getBean(SHZN_AdminDao.class);
		SHZN_AdminPage page = new SHZN_AdminPage();
		page.setRoleName("管理员");
		List<SHZN_Admin> list = dao.findByPage(page);
		for(SHZN_Admin a : list){
			System.out.println(a.getAdmin_id()+""+a.getAdmin_code());
			List<Role> roles = a.getRoles();
			for(Role r : roles) {
				System.out.println(r.getRole_id()+r.getName());
			}
			System.out.println("----------------");
		}
	}
	
	//-------------OK
	//@Test
	public void testFindRows(){
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		SHZN_AdminDao dao = ctx.getBean(SHZN_AdminDao.class);
		SHZN_AdminPage page = new SHZN_AdminPage();
		page.setRoleName("管理员");
		int rows = dao.findRows(page);
		System.out.println(rows);
	}
	
	//--------------OK
	//@Test
	public void testUpdatePassword(){
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		SHZN_AdminDao dao = ctx.getBean(SHZN_AdminDao.class);
		Map<String, Object> map = new HashMap<String, Object>();
		List<Integer> list = new ArrayList<Integer>();
		list.add(2000);
		//list.add(3000);
		//list.add(4000);
		//list.add(7000);
		map.put("ids", list);
		map.put("password", "lkailyt");
		dao.updatePassword(map);
		System.out.println("OK");
	}
	
	//@Test
	public void testFindByPageAdmin(){
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		SHZN_AdminDao dao = ctx.getBean(SHZN_AdminDao.class);
		SHZN_AdminPage page = new SHZN_AdminPage();
		page.setCurrentPage(1);
		List<SHZN_Admin> list = dao.findByPageAdmin(page);
		for(SHZN_Admin a : list ){
			System.out.println(a.getAdmin_id());
			System.out.println(a.getAdmin_code());
			System.out.println(a.getName());
		}
	}
	
	//@Test
	public void testsaveadminrole(){
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		SHZN_AdminDao dao = ctx.getBean(SHZN_AdminDao.class);
		
		dao.saveadminroleA(3);
		System.out.println("ok");
	}
	
	//@Test
	public void testfindadminByrole(){
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		SHZN_AdminDao dao = ctx.getBean(SHZN_AdminDao.class);
		List<Integer> list = dao.findadminByrole(2);
		int roleA = 0;
		int roleB = 0;
		int roleC = 0;
		for(int role : list){
			if(role == 100){
				System.out.println("管理员");
				roleA = 1;
			}else if(role == 200){
				System.out.println("普通会员");
				roleB = 1;
			}else if(role == 300){
				System.out.println("付费会员");
				roleC = 1;
			}
			
		}
		System.out.println(roleA);
		System.out.println(roleB);
		System.out.println(roleC);
	}
	
	
	//@Test
	public void testfindByAdminId(){
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		SHZN_AdminDao dao = ctx.getBean(SHZN_AdminDao.class);
		SHZN_Admin admin = dao.findByAdminID(1);
		System.out.println(admin.getAdmin_id());
		System.out.println(admin.getAdmin_code());
		System.out.println(admin.getName());
	}
	
	//@Test
	public void testupdateAdminXI(){
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		SHZN_AdminDao dao = ctx.getBean(SHZN_AdminDao.class);
		SHZN_Admin admin = new SHZN_Admin();
		admin.setAdmin_id(2);
		admin.setName("RABBITS");
		admin.setTelephone("18676660220");
		admin.setEmail("rabbits@qq.com");
		admin.setQq("1233211133");
		admin.setAddress("USA");
		admin.setGender(1);
		dao.updateAdminXI(admin);
		System.out.println("ok");
	}
	
	//@Test
	public void testupdateAdminPwd(){
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		SHZN_AdminDao dao = ctx.getBean(SHZN_AdminDao.class);
		SHZN_Admin admin = new SHZN_Admin();
		admin.setAdmin_id(2);
		admin.setPassword("123321");
		dao.updateAdminPwd(admin);
		System.out.println("ok");
	}
}


