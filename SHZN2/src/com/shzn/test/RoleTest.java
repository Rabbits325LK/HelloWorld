package com.shzn.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.shzn.dao.RoleDao;
import com.shzn.entity.Module;
import com.shzn.entity.Role;
import com.shzn.entity.page.RolePage;


/**
 * @author Administrator1
 *
 */
public class RoleTest {

	//---------------OK
	//@Test
	public void testFindByPage(){
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		RoleDao dao = ctx.getBean(RoleDao.class);
		RolePage page = new RolePage();
		List<Role> list = dao.findByPage(page);
		for(Role r : list){
			System.out.println(r.getRole_id()+""+r.getName());
			List<Module> modules = r.getModules();
			for(Module m : modules) {
				System.out.println(m.getModule_id()+""+m.getName());
			}
			System.out.println("-------------------");
		}
	}
	
	//--------------
	//@Test
	public void testSave() {
		ApplicationContext ctx = 
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		RoleDao dao = ctx.getBean(RoleDao.class);
		Role r = new Role();
		r.setName("普通员会");
		dao.save(r);
		System.out.println(r.getRole_id());
		System.out.println("---------------");
		Map<String, Object> map = 
				new HashMap<String, Object>();
		map.put("role_id",r.getRole_id());
		map.put("module_id",7);
		dao.saveRoleModule(map);
	}
	
	
	//---------
	//@Test
	public void testUpdate() {
		ApplicationContext ctx = 
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		RoleDao dao = ctx.getBean(RoleDao.class);
		Role role = dao.findById(400);
		role.setName("钻石会员");
		
		dao.deleteRoleModule(400);
		
		List<Integer> moduleIds = 
				new ArrayList<Integer>();
		moduleIds.add(1);
		moduleIds.add(2);
		moduleIds.add(3);
		moduleIds.add(4);
		moduleIds.add(5);
		moduleIds.add(6);
		
		for(Integer moduleId : moduleIds) {
			Map<String, Object> map =
					new HashMap<String, Object>();
			map.put("role_id", 400);
			map.put("module_id", moduleId);
			dao.saveRoleModule(map);
		}
	}
}
