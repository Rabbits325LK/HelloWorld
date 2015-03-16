package com.shzn.dao;

import java.util.List;

import com.shzn.annotation.MyBatisDAO;
import com.shzn.entity.Ship;
import com.shzn.entity.page.ShipPage;



@MyBatisDAO
public interface ShipDao {
	
	
	
	List<Ship> findAll();
	
	void save (Ship ship);
	
	Ship findById(int ship_id);
	
	
	void update(Ship ship);
	
	void updateById(Ship ship);
	
	void delete(int ship_id);
	
	List<Ship> findByPage(ShipPage page);
	
	int findRows();
}
