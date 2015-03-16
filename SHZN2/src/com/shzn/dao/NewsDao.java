package com.shzn.dao;

import java.util.List;

import com.shzn.annotation.MyBatisDAO;
import com.shzn.entity.News;
import com.shzn.entity.page.NewsPage;

@MyBatisDAO
public interface NewsDao {

	List<News> findByPage(NewsPage page);
	
	News findById(int news_id);
	
	void save(News news);
	
	void delete(int news_id);
	
	int findRows();
}
