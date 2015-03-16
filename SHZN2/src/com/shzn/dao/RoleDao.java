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
	 * ��ҳ��ѯ��ɫ���ݣ��ڲ�ѯ��ɫͬʱ��
	 * ��ѯ��ÿ����ɫ��Ӧ�Ķ��ģ�顣
	 */
	List<Role> findByPage(RolePage page);
	
	/**
	 * ��ѯ��ɫ������
	 */
	int findRows();
	
	/**
	 * ��ѯȫ��ģ������
	 */
	List<Module> findAllModules();
	
	/**
	 * �����ɫ����
	 */
	void save(Role role);
	
	/**
	 * �����ɫģ���м������
	 * @param map 
	 * 	һ���м�����ݣ�����key���ֶ�����ֵ���ֶ�ֵ
	 */
	void saveRoleModule(Map<String, Object> map);
	
	/**
	 * ����ID��ѯһ����ɫ��ͬʱ�Զ���ѯ����Ӧ��ģ�� 
	 */
	Role findById(int id);
	
	/**
	 * �޸Ľ�ɫ
	 */
	void update(Role role);
	
	/**
	 * ɾ��ָ����ɫ���м������
	 */
	void deleteRoleModule(int roleId);
	
	

}
