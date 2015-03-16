package com.shzn.entity;

import java.sql.Timestamp;

/**
 * SHipOperation
 * ´¬Í§²Ù×÷Çé¿ö
 * @author Administrator1
 *
 */
public class ShipO {

	private Integer ship_id;
	private String ship_name;
	private Timestamp startime;
	private Integer ship_role;
	private String Admin_name;
	private Integer timenum;
	public Integer getTimenum() {
		return timenum;
	}
	public void setTimenum(Integer timenum) {
		this.timenum = timenum;
	}
	public Integer getShip_id() {
		return ship_id;
	}
	public void setShip_id(Integer ship_id) {
		this.ship_id = ship_id;
	}
	public String getShip_name() {
		return ship_name;
	}
	public void setShip_name(String ship_name) {
		this.ship_name = ship_name;
	}
	public Timestamp getStartime() {
		return startime;
	}
	public void setStartime(Timestamp startime) {
		this.startime = startime;
	}
	public Integer getShip_role() {
		return ship_role;
	}
	public void setShip_role(Integer ship_role) {
		this.ship_role = ship_role;
	}
	public String getAdmin_name() {
		return Admin_name;
	}
	public void setAdmin_name(String admin_name) {
		Admin_name = admin_name;
	}
}
