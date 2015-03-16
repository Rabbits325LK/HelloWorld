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
	// �ɹ�
		public final static int SUCCESS = 0;
		// �˺Ŵ���
		public final static int ADMIN_CODE_ERROR = 1;
		// �������
		public final static int PASSWORD_ERROR = 2;
		// ��֤�����
		public final static int IMAGE_CODE_ERROR = 3;
		
	
		@Resource
		private SHZN_AdminDao adminDao;
		
		/**
		 * ������ҳ
		 * @return
		 */
		@RequestMapping("/index.do")
		public String toIndex(){
			return "main/index";
		}
		
		/**
		 * ����ע��ҳ��
		 * @return
		 */
		@RequestMapping("/toSign.do")
		public String toSign(){
			return "main/sign";
		}

		/**
		 * �򿪵�¼ҳ��
		 */
		@RequestMapping("/toLogin.do")
		public String toLogin() {
			return "main/login";
		}
		
		/**
		 * ��ϵͳ��ҳ
		 */
	
		
		/**
		 * ��¼��֤�����ص���״̬��
		 */
		@RequestMapping("/checkLogin.do")
		@ResponseBody
		public int checkLogin(
				String adminCode,
				String password,
				String code,
				HttpSession session) {
			//��֤��֤��
			String imageCode = 
				(String) session.getAttribute("imageCode");
			if(!code.equalsIgnoreCase(imageCode)) {
				//��֤����������
				return IMAGE_CODE_ERROR;
			}
			//�����˺Ų�ѯ����Ա
			SHZN_Admin admin = adminDao.findByCode(adminCode);
			//��֤�˺�
			if(admin == null) {
				//�˺Ų�����
				return ADMIN_CODE_ERROR;
			} else if (!admin.getPassword().equals(password)) {
				//���벻��ȷ
				return PASSWORD_ERROR;
			} else {
				//��֤ͨ��
				session.setAttribute("admin", admin);
				//ȡ���û����Է��ʵ�ģ�飬����session
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
		 * ������֤��ͼƬ
		 * @throws IOException 
		 */
		@RequestMapping("/createImage.do")
		public void createImage(
				HttpServletResponse response,
				HttpSession session) throws IOException {
			//������֤�뼰ͼƬ
			Map<String, BufferedImage> map = 
				ImageUtil.createImage();
			//ȡ����֤�룬����session
			String code = map.keySet().iterator().next();
			session.setAttribute("imageCode", code);
			//ȡ��ͼƬ�����͵�ҳ��
			BufferedImage image = map.get(code);
			response.setContentType("image/jpeg");
			OutputStream os = response.getOutputStream();
			ImageIO.write(image, "jpeg", os);
			os.close();
		}
		
		/**
		 * ����Ȩ��ҳ��
		 */
		@RequestMapping("/nopower.do")
		public String nopower() {
			return "main/nopower2";
		}
}
