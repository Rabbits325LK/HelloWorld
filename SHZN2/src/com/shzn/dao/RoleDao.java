package com.shzn.dao;

import java.util.List;
import java.util.Map;

import com.fasterxml.jackson.databind.Module;
import com.shzn.annotation.MyBatisDAO;
import com.shzn.entity.Role;
import com.shzn.entity.page.RolePage;


@MyBatisDAO
public interface RoleDao {
	
	/**
	 * 分页查询角色数据，在查询角色同时，
	 * 查询出每个角色对应的多个模块。
	 */
	List<Role> findByPage(RolePage page);
	
	/**
	 * 查询角色总行数
	 */
	int findRows();
	
	/**
	 * 查询全部模块数据
	 */
	List<Module> findAllModules();
	
	/**
	 * 保存角色数据
	 */
	void save(Role role);
	
	/**
	 * 保存角色模块中间表数据
	 * @param map 
	 * 	一条中间表数据，其中key是字段名，值是字段值
	 */
	void saveRoleModule(Map<String, Object> map);
	
	/**
	 * 根据ID查询一条角色，同时自动查询出对应的模块 
	 */
	Role findById(int id);
	
	/**
	 * 修改角色
	 */
	void update(Role role);
	
	/**
	 * 删除指定角色的中间表数据
	 */
	void deleteRoleModule(int roleId);
	
	

}
