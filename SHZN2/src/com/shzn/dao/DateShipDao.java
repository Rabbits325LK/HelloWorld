package com.shzn.dao;

import java.util.List;
import java.util.Map;

import com.shzn.annotation.MyBatisDAO;
import com.shzn.entity.DateShip;

@MyBatisDAO
public interface DateShipDao {
	List <DateShip> findAll(int specitifedDay);
	void update(Map<String,Object>DateShipAll);
	DateShip findByNames(Map<String,Object> dateship_num);
	void createDateShip(int specifiedDayAfter);
	void updateDateship(int specifiedDayAfter);
	DateShip findByName(DateShip ds);
	/*void updateT8(String dateShip_name,int t8);
	void updateT9(String dateShip_name,int t9);
	void updateT10(String dateShip_name,int t10);
	void updateT11(String dateShip_name,int t11);
	void updateT12(String dateShip_name,int t12);
	void updateT13(String dateShip_name,int t13);
	void updateT14(String dateShip_name,int t14);
	void updateT15(String dateShip_name,int t15);
	void updateT16(String dateShip_name,int t16);
	void updateT17(String dateShip_name,int t17);
	void updateT18(String dateShip_name,int t18);
	void updateT19(String dateShip_name,int t19);
	void updateT20(String dateShip_name,int t20);
	void updateT21(String dateShip_name,int t21);
	void updateT22(String dateShip_name,int t22);*/
}
