package com.shzn.dao;

import java.util.List;
import java.util.Map;

import com.shzn.annotation.MyBatisDAO;
import com.shzn.entity.Module;
import com.shzn.entity.SHZN_Admin;
import com.shzn.entity.page.SHZN_AdminPage;

@MyBatisDAO
public interface SHZN_AdminDao {

	/**
	 * 分页查询管理员
	 */
	List<SHZN_Admin> findByPage(SHZN_AdminPage page);
	
	/**
	 * 查询满足条件的数据总行
	 * @param page
	 * @return
	 */
	int findRows(SHZN_AdminPage page);
	
	/**
	 * 将指定的用户密码修改为指定密码
	 * @param map
	 * key			value

	 * password		String
	 */
	void updatePassword(Map<String, Object> map);
	
	/**
	 * 根据帐号查询管理员
	 * @param adminCode
	 * @return
	 */
	SHZN_Admin findByCode(String adminCode);
	
	/**
	 * 根据管理员ID， 查询出他可以访问的全部模块
	 * @param adminId
	 * @return
	 */
	List<Module> findModulesByAdmin(int adminId);
	
	void save(SHZN_Admin admin);
	
	int findByNameForId(String admin_code);
	
	void savePTHY(int admin_id);
	
	List<SHZN_Admin> findByPageAdmin(SHZN_AdminPage page);
	
	int findRow();
	
	void delete(int admin_id);
	
	List<Integer> findadminByrole(int admin_id);
	
	SHZN_Admin findByAdminID(int admin_id);

	void saveadminroleA(int adminid);
	void saveadminroleB(int adminid);
	void saveadminroleC(int adminid);
	void updateAdminPwd(SHZN_Admin admin);
	void updateAdminXI(SHZN_Admin admin);
}
