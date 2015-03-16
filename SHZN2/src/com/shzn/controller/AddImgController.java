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
			System.out.println("�ļ�δ�ϴ�");
			return "root/error_imgupdate";
		}else {
			
           //����õ���Tomcat�����������ļ����ϴ���\\%TOMCAT_HOME%\\webapps\\YourWebProject\\WEB-INF\\upload\\�ļ�����  
             String realPath = request.getSession().getServletContext().getRealPath("/img/ship");  
             //���ﲻ�ش���IO���رյ����⣬��ΪFileUtils.copyInputStreamToFile()�����ڲ����Զ����õ���IO���ص������ǿ�����Դ���֪����  
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
		// ·��Ϊ�ļ��Ҳ�Ϊ�������ɾ��  
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
			System.out.println("�ļ�δ�ϴ�");
			return "root/error_imgupdate";
		}else {
			
           //����õ���Tomcat�����������ļ����ϴ���\\%TOMCAT_HOME%\\webapps\\YourWebProject\\WEB-INF\\upload\\�ļ�����  
             String realPath = request.getSession().getServletContext().getRealPath("/img/news");  
             //���ﲻ�ش���IO���رյ����⣬��ΪFileUtils.copyInputStreamToFile()�����ڲ����Զ����õ���IO���ص������ǿ�����Դ���֪����  
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
