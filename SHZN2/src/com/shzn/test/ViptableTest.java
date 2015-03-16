package com.shzn.test;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.junit.Test;



public class ViptableTest {
	
	//@Test
	public void test(){
	int startime = 3;
	int endtime = 7;
	int[] arr = new int[23];
	for(int i = startime; i <= endtime;i++ ){
		System.out.println(i);
		arr[i-1]=i;
		System.out.println("arr:"+arr[i-1]);
	}
	}
	
	@Test
	public void toIntDate(){
		System.out.println(IntDate(5,11));
	}
	
	
	public String IntDate(int startime, int endtime){
		int start = 3;
		int end = 7;
		int i = start;
		boolean flag = false;
		String text = "1";
		while(flag == false){
			if(startime == i || endtime == i){
				text = "Error";
				flag = true;
				i++;
				System.out.println(i);
				return text;
			}else if(i == end){
				text = "OK";
				flag = true;
				return text;
			}
		}
		return text;
	}
			
}
