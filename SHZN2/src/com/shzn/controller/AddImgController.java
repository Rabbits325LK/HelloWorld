package com.shzn.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.shzn.dao.ImageDao;
import com.shzn.entity.AddImg;
import com.shzn.entity.Image;
import com.shzn.entity.page.ImagePage;

@Controller
@RequestMapping("/roots")
public class AddImgController {
	
	@Resource
	private ImageDao imgdao;
	
	@RequestMapping("/toimglist.do")
	public String toimglist(ImagePage page, Model model){
		List<Image> list = imgdao.findByPage(page);
		model.addAttribute("imgs", list);
		page.setRows(imgdao.findRows());
		model.addAttribute("imgPage",page);
		return "root/imglist";
	}
	
	@RequestMapping("/toimgupdate.do")
	public String toimgupdate(){
		return "root/imgupdate";
	}
	
	@RequestMapping("/imgupdate.do")
	public String imgupdate(AddImg addimg,
			@RequestParam(value="myfile") MultipartFile myfile, 
			HttpServletRequest request,
			Model model)
			throws IOException{
		if(myfile.isEmpty()){
			System.out.println("文件未上传");
			return "root/error_imgupdate";
		}else {
			
           //如果用的是Tomcat服务器，则文件会上传到\\%TOMCAT_HOME%\\webapps\\YourWebProject\\WEB-INF\\upload\\文件夹中  
             String realPath = request.getSession().getServletContext().getRealPath("/img/ship");  
             //这里不必处理IO流关闭的问题，因为FileUtils.copyInputStreamToFile()方法内部会自动把用到的IO流关掉，我是看它的源码才知道的  
             File targetFile= new File(realPath, myfile.getOriginalFilename());
             myfile.transferTo(targetFile);
             Image img = new Image();
            
 			img.setImg_name(myfile.getOriginalFilename());
 			String imgSize = Long.toString(myfile.getSize());
 			img.setImg_size(imgSize);
 			img.setImg_type(myfile.getContentType());
 			String paths =targetFile.getAbsolutePath();
 			img.setImg_path(paths);
 			imgdao.save(img);
 			model.addAttribute("addimg", addimg);
 			return "redirect:toimglist.do";
		}
		
	}
	
	@RequestMapping("/imgdelete.do")
	public String imgDelete(int img_id){
		
		Image img = imgdao.findByPath(img_id);
		File file = new File(img.getImg_path());
		System.out.println(img.getImg_path());
		// 路径为文件且不为空则进行删除  
		   file.delete();
		   imgdao.delete(img_id);
		    return "redirect:toimglist.do";
	}

	
	@RequestMapping("/newsimgupdate.do")
	public String newsimgupdate(AddImg addimg,
			@RequestParam(value="myfile") MultipartFile myfile, 
			HttpServletRequest request,
			Model model)
			throws IOException{
		if(myfile.isEmpty()){
			System.out.println("文件未上传");
			return "root/error_imgupdate";
		}else {
			
           //如果用的是Tomcat服务器，则文件会上传到\\%TOMCAT_HOME%\\webapps\\YourWebProject\\WEB-INF\\upload\\文件夹中  
             String realPath = request.getSession().getServletContext().getRealPath("/img/news");  
             //这里不必处理IO流关闭的问题，因为FileUtils.copyInputStreamToFile()方法内部会自动把用到的IO流关掉，我是看它的源码才知道的  
             File targetFile= new File(realPath, myfile.getOriginalFilename());
             myfile.transferTo(targetFile);
             Image img = new Image();
            
 			img.setImg_name(myfile.getOriginalFilename());
 			String imgSize = Long.toString(myfile.getSize());
 			img.setImg_size(imgSize);
 			img.setImg_type(myfile.getContentType());
 			String paths =targetFile.getAbsolutePath();
 			img.setImg_path(paths);
 			imgdao.save(img);
 			model.addAttribute("addimg", addimg);
 			return "redirect:toimglist.do";
		}
	}
}
