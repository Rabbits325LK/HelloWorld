package com.shzn.test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.shzn.dao.NewsDao;
import com.shzn.entity.News;
import com.shzn.entity.page.NewsPage;

public class NewsTest {

	
	//@Test
	public void save(){
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		NewsDao dao = ctx.getBean(NewsDao.class);
		News news = new News();
		news.setNews_title("≤‚ ‘");
		news.setNews_text("≤‚ ‘ƒ⁄»›");
		news.setNews_img("beijin2.jpg");
		dao.save(news);
		System.out.println("ok");
	}
	
	@Test
	public void findByPage(){
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		NewsDao dao = ctx.getBean(NewsDao.class);
		NewsPage page = new NewsPage();
		page.setCurrentPage(1);
		List<News> list = dao.findByPage(page);
		for(News n : list){
			System.out.println(n.getNews_id());
			System.out.println(n.getNews_title());
			System.out.println(n.getNews_text());
			System.out.println(n.getNews_time());
			System.out.println(n.getNews_img());
		}
	}
	
	//@Test
	public void delete(){
		ApplicationContext ctx =
				new ClassPathXmlApplicationContext
				("applicationContext.xml");
		NewsDao dao = ctx.getBean(NewsDao.class);
		dao.delete(1);
		System.out.println("ok");
	}
}
