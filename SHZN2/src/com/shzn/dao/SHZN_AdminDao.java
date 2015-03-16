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
	 * ��ҳ��ѯ����Ա
	 */
	List<SHZN_Admin> findByPage(SHZN_AdminPage page);
	
	/**
	 * ��ѯ������������������
	 * @param page
	 * @return
	 */
	int findRows(SHZN_AdminPage page);
	
	/**
	 * ��ָ�����û������޸�Ϊָ������
	 * @param map
	 * key			value

	 * password		String
	 */
	void updatePassword(Map<String, Object> map);
	
	/**
	 * �����ʺŲ�ѯ����Ա
	 * @param adminCode
	 * @return
	 */
	SHZN_Admin findByCode(String adminCode);
	
	/**
	 * ���ݹ���ԱID�� ��ѯ�������Է��ʵ�ȫ��ģ��
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
