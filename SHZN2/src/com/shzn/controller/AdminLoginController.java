package com.shzn.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shzn.dao.SHZN_AdminDao;
import com.shzn.entity.Module;
import com.shzn.entity.SHZN_Admin;
import com.shzn.util.ImageUtil;

@Controller
@RequestMapping("/login")
public class AdminLoginController {
	// 成功
		public final static int SUCCESS = 0;
		// 账号错误
		public final static int ADMIN_CODE_ERROR = 1;
		// 密码错误
		public final static int PASSWORD_ERROR = 2;
		// 验证码错误
		public final static int IMAGE_CODE_ERROR = 3;
		
	
		@Resource
		private SHZN_AdminDao adminDao;
		
		/**
		 * 进入主页
		 * @return
		 */
		@RequestMapping("/index.do")
		public String toIndex(){
			return "main/index";
		}
		
		/**
		 * 进入注册页面
		 * @return
		 */
		@RequestMapping("/toSign.do")
		public String toSign(){
			return "main/sign";
		}

		/**
		 * 打开登录页面
		 */
		@RequestMapping("/toLogin.do")
		public String toLogin() {
			return "main/login";
		}
		
		/**
		 * 打开系统首页
		 */
	
		
		/**
		 * 登录验证，返回的是状态码
		 */
		@RequestMapping("/checkLogin.do")
		@ResponseBody
		public int checkLogin(
				String adminCode,
				String password,
				String code,
				HttpSession session) {
			//验证验证码
			String imageCode = 
				(String) session.getAttribute("imageCode");
			if(!code.equalsIgnoreCase(imageCode)) {
				//验证码输入有误
				return IMAGE_CODE_ERROR;
			}
			//根据账号查询管理员
			SHZN_Admin admin = adminDao.findByCode(adminCode);
			//验证账号
			if(admin == null) {
				//账号不存在
				return ADMIN_CODE_ERROR;
			} else if (!admin.getPassword().equals(password)) {
				//密码不正确
				return PASSWORD_ERROR;
			} else {
				//验证通过
				session.setAttribute("admin", admin);
				//取出用户可以访问的模块，放入session
				List<Module> modules = 
					adminDao.findModulesByAdmin(admin.getAdmin_id());
				session.setAttribute("modules", modules);
				return SUCCESS;
			}
			
		}
		
		/*@RequestMapping("admincode.do")
		public int admincode(String adminCode){
			SHZN_Admin admin = adminDao.findByCode(adminCode);
			if(admin == null) {
				return 4;
			}else {
				return 5;
			}
		}*/
		
		@RequestMapping("/sign.do")
		public String toSign(SHZN_Admin admin){
			SHZN_Admin Admin = adminDao.findByCode(admin.getAdmin_code());
			if(Admin == null){
			adminDao.save(admin);
			String admin_code = admin.getAdmin_code();
			System.out.println(admin_code);
			
			int admin_id = adminDao.findByNameForId(admin_code);
			System.out.println(admin_id);
			adminDao.savePTHY(admin_id);
			return "main/signwait";
			}else {
				return "main/signerror";
			}
		}
		
		/**
		 * 生成验证码图片
		 * @throws IOException 
		 */
		@RequestMapping("/createImage.do")
		public void createImage(
				HttpServletResponse response,
				HttpSession session) throws IOException {
			//生成验证码及图片
			Map<String, BufferedImage> map = 
				ImageUtil.createImage();
			//取得验证码，存入session
			String code = map.keySet().iterator().next();
			session.setAttribute("imageCode", code);
			//取得图片，发送到页面
			BufferedImage image = map.get(code);
			response.setContentType("image/jpeg");
			OutputStream os = response.getOutputStream();
			ImageIO.write(image, "jpeg", os);
			os.close();
		}
		
		/**
		 * 打开无权限页面
		 */
		@RequestMapping("/nopower.do")
		public String nopower() {
			return "main/nopower2";
		}
}
