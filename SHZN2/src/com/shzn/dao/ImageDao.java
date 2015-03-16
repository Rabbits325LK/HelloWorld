package com.shzn.dao;

import java.util.List;

import com.shzn.annotation.MyBatisDAO;
import com.shzn.entity.Image;
import com.shzn.entity.page.ImagePage;

@MyBatisDAO
public interface ImageDao {
	
	List<Image> findAll();
	
	List<Image> findByPage(ImagePage page);
	
	void save(Image img);
	
	void delete (int img_id);
	
	Image findByPath(int img_id);
	
	int findRows();
}
