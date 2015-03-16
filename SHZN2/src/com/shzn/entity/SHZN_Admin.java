package com.shzn.entity;

import java.sql.Timestamp;
import java.util.List;

public class SHZN_Admin {
	
	private Integer admin_id;    //ID
	private String admin_code;   //帐号
	private String password;     //密码
	private String name;         //姓名
	private String telephone;    //电话
	private String email;        //电子邮件
	private String qq;           //QQ号
	private String address;      //地址
	private Integer gender;      //性别
	private Timestamp enrolldate;//登录时间
	
	/**
	 * 追加关联属性，用于封装关联的角色，查询时使用
	 */
	private List<Role> roles;
	
	/**
	 * 用来封装对应的角色ID，保存时使用
	 */
	private List<Integer> roleIds;

	public Integer getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(Integer admin_id) {
		this.admin_id = admin_id;
	}

	public String getAdmin_code() {
		return admin_code;
	}

	public void setAdmin_code(String admin_code) {
		this.admin_code = admin_code;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getGender() {
		return gender;
	}

	public void setGender(Integer gender) {
		this.gender = gender;
	}

	public Timestamp getEnrolldate() {
		return enrolldate;
	}

	public void setEnrolldate(Timestamp enrolldate) {
		this.enrolldate = enrolldate;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	public List<Integer> getRoleIds() {
		return roleIds;
	}

	public void setRoleIds(List<Integer> roleIds) {
		this.roleIds = roleIds;
	}
}
