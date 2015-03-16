package com.shzn.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shzn.dao.NewsDao;
import com.shzn.dao.SHZN_AdminDao;
import com.shzn.dao.ShipDao;
import com.shzn.dao.ShipODao;
import com.shzn.entity.News;
import com.shzn.entity.SHZN_Admin;
import com.shzn.entity.Ship;
import com.shzn.entity.ShipO;
import com.shzn.entity.page.NewsPage;
import com.shzn.entity.page.SHZN_AdminPage;
import com.shzn.entity.page.ShipOPage;
import com.shzn.entity.page.ShipPage;

@Controller
@RequestMapping("/root")
public class RootController {
	
	@Resource
	private ShipODao shipodao;
	
	@Resource
	private ShipDao shipdao;
	
	@Resource
	private SHZN_AdminDao admindao;
	
	@Resource
	private NewsDao newsdao;
	
	@RequestMapping("/shipM.do")
	public String toShipList(){
		return "root/shipM";
	}
	
	
	
	//��ѯ��������
		@RequestMapping("/findAllshipo")
		public String toFindAll(ShipOPage page, Model model){
			List<ShipO> list = shipodao.findByPage(page);
			model.addAttribute("shipo",list);
			page.setRows(shipodao.findRows());
			model.addAttribute("shipoPage",page);
			return "root/shipM";
		}
		
		//ɾ���ȴ����������
		@RequestMapping("/toShipoDelete")
		public String toDelete(int ship_id, Model model){
			shipodao.delete(ship_id);
			return "redirect:findAllshipo.do";
		}
		
		//��������
		@RequestMapping("/toShipPass")
		public String toShipPass(int ship_id){
			shipodao.updateforRolePass(ship_id);
			return "redirect:findAllshipo.do";
		}
		
		//��Ӵ���Ϣ
		@RequestMapping("/toSaveNewShip")
		public String toSaveShip(Ship ship){
			shipdao.save(ship);
			return "redirect:findAllshipo.do";
		}
		
		//��ѯ���д�ͧ
		@RequestMapping("/toshiplist")
		public String toShipList(ShipPage page, Model model){
			List<Ship> list = shipdao.findByPage(page);
			model.addAttribute("ship",list);
			page.setRows(shipdao.findRows());
			model.addAttribute("shipPage",page);
			return "root/shiplist";
		}
		
		//����IDɾ����ͧ
		@RequestMapping("/toshipdelete")
		public String toShipDelete(int ship_id){
			shipdao.delete(ship_id);
			return "redirect:toshiplist.do";
		}
		
		//��ת����Ӵ�ͧҳ��
		@RequestMapping("/toshipadd.do")
		public String toShipAdd(){
			return "root/shipadd";
		}
		
		//��Ӵ�ͧ
		@RequestMapping("/shipadd.do")
		public String shipAdd(Ship ship){
			shipdao.save(ship);
			return "redirect:toshiplist.do";
		}
		
		//����ID�����޸�ҳ��
		@RequestMapping("toshipupdate")
		public String toShipUpdate(int ship_id, Model model){
			Ship ship = shipdao.findById(ship_id);
			model.addAttribute("ship",ship);
			return "root/shipupdate";
		}
		
		//����ID�޸Ĵ�ͧ��Ϣ
		@RequestMapping("shipupdate")
		public String ShipUpdate(Ship ship){
			shipdao.update(ship);
			return "redirect:toshiplist.do";
		}
		
		//�����û�ҳ��
		@RequestMapping("/adminlist.do")
		public String AdminList(SHZN_AdminPage page, Model model){
			List<SHZN_Admin> list = admindao.findByPageAdmin(page);
			model.addAttribute("admin",list);
			page.setRows(admindao.findRow());
			model.addAttribute("adminPage",page);
			return "root/adminlist";
		}
		
		//ɾ���û�
		@RequestMapping("/toadmindelete.do")
		public String Admindelete(int admin_id){
			admindao.delete(admin_id);
			return "redirect:adminlist.do";
		}
		
		//��ת���������ҳ��
		@RequestMapping("/toaddnews.do")
		public String toAddNews(){
			return "root/addnews";
		}
		
		//����Ա����ҳ��
		@RequestMapping("/tonewslist.do")
		public String toNewslist(NewsPage page, Model model){
			List<News> list = newsdao.findByPage(page);
			model.addAttribute("news",list);
			page.setRows(newsdao.findRows());
			model.addAttribute("newsPage",page);
			return "root/newslist";
		}
		
		//�ύ����
		@RequestMapping("/addnews.do")
		public String addnews(News news){
			newsdao.save(news);
			return "redirect:toaddnews.do";
		}
		
		//ɾ������
		@RequestMapping("/tonewsDelete.do")
		public String newsDelete(int news_id){
			newsdao.delete(news_id);
			return "redirect:newslist.do";
		}
		
		//����ID�����޸��û�Ȩ��ҳ��
		@RequestMapping("/toadminroleupdate.do")
		public String toadminroleupdate(int admin_id, Model model){
			int roleA = 0;
			int roleB = 0;
			int roleC = 0;
			List<Integer> roles = admindao.findadminByrole(admin_id);
			for(int role : roles){
				if(role == 100){
					//System.out.println("����Ա");
					roleA = 1;
				}else if(role == 200){
					//System.out.println("��ͨ��Ա");
					roleB = 1;
				}else if(role == 300){
					//System.out.println("���ѻ�Ա");
					roleC = 1;
				}
			}
			model.addAttribute("admin_id",admin_id);
			model.addAttribute("roleA",roleA);
			model.addAttribute("roleB",roleB);
			model.addAttribute("roleC",roleC);
			return "root/adminroleupdate";
		}
		
		//����Ϊ����Ա
		@RequestMapping("/adminroleupdateA.do")
		public String adminroleupdateA(int admin_id){
			admindao.saveadminroleA(admin_id);
			return "redirect:adminlist.do";
		}
		
		//��ʾΪ��ͨ��Ա
		@RequestMapping("/adminroleupdateB.do")
		public String adminroleupdateB(int admin_id){
			admindao.saveadminroleA(admin_id);
			return "redirect:adminlist.do";
		}
		
		//����Ϊ���ѻ�Ա
		@RequestMapping("/adminroleupdateC.do")
		public String adminroleupdateC(int admin_id){
			admindao.saveadminroleA(admin_id);
			return "redirect:adminlist.do";
		}
}
