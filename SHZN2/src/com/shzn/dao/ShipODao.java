package com.shzn.dao;

import java.util.List;

import com.shzn.annotation.MyBatisDAO;
import com.shzn.entity.ShipO;
import com.shzn.entity.page.ShipOPage;

@MyBatisDAO
public interface ShipODao {
	
	List<ShipO> findAll();
	
	List<ShipO> findByPage(ShipOPage page);
	
	void save (ShipO shipo);
	
	ShipO findById(int ship_id);
	
	List<ShipO> unfindByName(String Admin_name);
	
	List<ShipO> ufindByName(String Admin_name);
	
	void update(ShipO shipo);
	
	void delete(int ship_id);
	
	int findRows();
	
	void updateforRolePass(int ship_id);

}
