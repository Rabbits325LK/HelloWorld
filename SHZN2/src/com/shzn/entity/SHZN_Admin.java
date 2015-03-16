package com.shzn.entity;

import java.sql.Timestamp;
import java.util.List;

public class SHZN_Admin {
	
	private Integer admin_id;    //ID
	private String admin_code;   //�ʺ�
	private String password;     //����
	private String name;         //����
	private String telephone;    //�绰
	private String email;        //�����ʼ�
	private String qq;           //QQ��
	private String address;      //��ַ
	private Integer gender;      //�Ա�
	private Timestamp enrolldate;//��¼ʱ��
	
	/**
	 * ׷�ӹ������ԣ����ڷ�װ�����Ľ�ɫ����ѯʱʹ��
	 */
	private List<Role> roles;
	
	/**
	 * ������װ��Ӧ�Ľ�ɫID������ʱʹ��
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
