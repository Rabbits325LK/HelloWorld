package com.shzn.entity;

import java.sql.Timestamp;

public class News {
	private Integer news_id;
	private String news_title;
	private String news_text;
	private String news_img;
	private Timestamp news_time;
	public Integer getNews_id() {
		return news_id;
	}
	public void setNews_id(Integer news_id) {
		this.news_id = news_id;
	}
	public String getNews_title() {
		return news_title;
	}
	public void setNews_title(String news_title) {
		this.news_title = news_title;
	}
	public String getNews_text() {
		return news_text;
	}
	public void setNews_text(String news_text) {
		this.news_text = news_text;
	}
	public String getNews_img() {
		return news_img;
	}
	public void setNews_img(String news_img) {
		this.news_img = news_img;
	}
	public Timestamp getNews_time() {
		return news_time;
	}
	public void setNews_time(Timestamp news_time) {
		this.news_time = news_time;
	}
	
	
}
