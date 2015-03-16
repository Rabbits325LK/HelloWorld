package com.shzn.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 船艇约定时间操作实体类
 * @author Rabbits
 *
 */
public class DateShip {
	private String dateShip_name; //船名
	private int dateShip_id;  //列表ID
	private static String DATESHIP_SPECITIFEDDAY = new SimpleDateFormat("yyyyMMdd").format(new Date()); // 当前日期
	private int specitifedDay;
	public int getSpecitifedDay() {
		return specitifedDay;
	}
	public void setSpecitifedDay(int specitifedDay) {
		this.specitifedDay = specitifedDay;
	}
	private static int DATESHIP_EMPLOY = 1; // 占用
	private static int DATESHIP_FREE = 0; //空闲
	private static int DATESHIP_EXPIRE = 2; //到期
	private Integer t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20,t21,t22,t23,t24;
	
	

	public String getDateShip_name() {
		return dateShip_name;
	}
	public void setDateShip_name(String dateShip_name) {
		this.dateShip_name = dateShip_name;
	}
	public int getDateShip_id() {
		return dateShip_id;
	}
	public void setDateShip_id(int dateShip_id) {
		this.dateShip_id = dateShip_id;
	}
	public static String getDATESHIP_SPECITIFEDDAY() {
		return DATESHIP_SPECITIFEDDAY;
	}
	public static void setDATESHIP_SPECITIFEDDAY(String dATESHIP_SPECITIFEDDAY) {
		DATESHIP_SPECITIFEDDAY = dATESHIP_SPECITIFEDDAY;
	}
	public static int getDATESHIP_EMPLOY() {
		return DATESHIP_EMPLOY;
	}
	public static void setDATESHIP_EMPLOY(int dATESHIP_EMPLOY) {
		DATESHIP_EMPLOY = dATESHIP_EMPLOY;
	}
	public static int getDATESHIP_FREE() {
		return DATESHIP_FREE;
	}
	public static void setDATESHIP_FREE(int dATESHIP_FREE) {
		DATESHIP_FREE = dATESHIP_FREE;
	}
	public static int getDATESHIP_EXPIRE() {
		return DATESHIP_EXPIRE;
	}
	public static void setDATESHIP_EXPIRE(int dATESHIP_EXPIRE) {
		DATESHIP_EXPIRE = dATESHIP_EXPIRE;
	}
	public Integer getT1() {
		return t1;
	}
	public void setT1(Integer t1) {
		this.t1 = t1;
	}
	public Integer getT2() {
		return t2;
	}
	public void setT2(Integer t2) {
		this.t2 = t2;
	}
	public Integer getT3() {
		return t3;
	}
	public void setT3(Integer t3) {
		this.t3 = t3;
	}
	public Integer getT4() {
		return t4;
	}
	public void setT4(Integer t4) {
		this.t4 = t4;
	}
	public Integer getT5() {
		return t5;
	}
	public void setT5(Integer t5) {
		this.t5 = t5;
	}
	public Integer getT6() {
		return t6;
	}
	public void setT6(Integer t6) {
		this.t6 = t6;
	}
	public Integer getT7() {
		return t7;
	}
	public void setT7(Integer t7) {
		this.t7 = t7;
	}
	public Integer getT8() {
		return t8;
	}
	public void setT8(Integer t8) {
		this.t8 = t8;
	}
	public Integer getT9() {
		return t9;
	}
	public void setT9(Integer t9) {
		this.t9 = t9;
	}
	public Integer getT10() {
		return t10;
	}
	public void setT10(Integer t10) {
		this.t10 = t10;
	}
	public Integer getT11() {
		return t11;
	}
	public void setT11(Integer t11) {
		this.t11 = t11;
	}
	public Integer getT12() {
		return t12;
	}
	public void setT12(Integer t12) {
		this.t12 = t12;
	}
	public Integer getT13() {
		return t13;
	}
	public void setT13(Integer t13) {
		this.t13 = t13;
	}
	public Integer getT14() {
		return t14;
	}
	public void setT14(Integer t14) {
		this.t14 = t14;
	}
	public Integer getT15() {
		return t15;
	}
	public void setT15(Integer t15) {
		this.t15 = t15;
	}
	public Integer getT16() {
		return t16;
	}
	public void setT16(Integer t16) {
		this.t16 = t16;
	}
	public Integer getT17() {
		return t17;
	}
	public void setT17(Integer t17) {
		this.t17 = t17;
	}
	public Integer getT18() {
		return t18;
	}
	public void setT18(Integer t18) {
		this.t18 = t18;
	}
	public Integer getT19() {
		return t19;
	}
	public void setT19(Integer t19) {
		this.t19 = t19;
	}
	public Integer getT20() {
		return t20;
	}
	public void setT20(Integer t20) {
		this.t20 = t20;
	}
	public Integer getT21() {
		return t21;
	}
	public void setT21(Integer t21) {
		this.t21 = t21;
	}
	public Integer getT22() {
		return t22;
	}
	public void setT22(Integer t22) {
		this.t22 = t22;
	}
	public Integer getT23() {
		return t23;
	}
	public void setT23(Integer t23) {
		this.t23 = t23;
	}
	public Integer getT24() {
		return t24;
	}
	public void setT24(Integer t24) {
		this.t24 = t24;
	}
	
	
}
