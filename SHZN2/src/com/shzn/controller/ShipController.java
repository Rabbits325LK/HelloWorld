package com.shzn.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shzn.dao.NewsDao;
import com.shzn.dao.SHZN_AdminDao;
import com.shzn.dao.ShipDao;
import com.shzn.entity.News;
import com.shzn.entity.SHZN_Admin;
import com.shzn.entity.Ship;
import com.shzn.entity.page.NewsPage;
import com.shzn.entity.page.ShipPage;

@Controller
@RequestMapping("/ship")
public class ShipController {

	@Resource
	private ShipDao shipdao;
	
	@Resource
	private SHZN_AdminDao admindao;
	
	@Resource
	private NewsDao newsdao;
	
	@RequestMapping("/tonewspage.do")
	public String toNewsPage(int news_id, Model model){
		News news = new News();
		news = newsdao.findById(news_id);
		model.addAttribute("news",news);
		return "ship/newspage";
	}
	
	@RequestMapping("/toIndex.do")
	public String toHome(HttpServletRequest request, Model model) {
		SHZN_Admin admin = (SHZN_Admin)request.getSession().getAttribute("admin");
		model.addAttribute("admin",admin);
		return "ship/home";
	}
	
	@RequestMapping("/shiplist")
	public String toShipList(ShipPage page, Model model){
		List<Ship> list = shipdao.findByPage(page);
		model.addAttribute("ship",list);
		page.setRows(shipdao.findRows());
		model.addAttribute("shipPage",page);
		return "ship/shiplist";
	}
	
	@RequestMapping("/shippage")
	public String toShipPage(int ship_id, Model model,HttpServletRequest request){
		//System.out.println(ship_id);
		Ship ship = shipdao.findById(ship_id);
		SHZN_Admin admin = (SHZN_Admin) request.getSession().getAttribute("admin");
		model.addAttribute("admin",admin);
		model.addAttribute("ship",ship);
		return "ship/shippage";
	}
	
	
	
	@RequestMapping("/shiphome.do")
	public String shipHome(NewsPage page, Model model){
		List<News> list = newsdao.findByPage(page);
		model.addAttribute("news",list);
		page.setRows(newsdao.findRows());
		model.addAttribute("newsPage",page);
		return "ship/shiphome";
	}
	
	@RequestMapping("/help.do")
	public String tohelp(){
		return "ship/help";
	}
	
	@RequestMapping("/about.do")
	public String toAbout(){
		return "ship/about";
	}
	
	
	@RequestMapping("/toadminupdate.do")
	public String toAdminUpdate(int admin_id, Model model){
		SHZN_Admin admin = admindao.findByAdminID(admin_id);
		model.addAttribute("admin",admin);
		return "ship/adminupdate";
	}
	
	@RequestMapping("/adminupdate.do")
	public String adminUpdate(SHZN_Admin admin){
		admindao.updateAdminXI(admin);
		return "ship/close";
	}
	
	@RequestMapping("/toupdateadminpwd.do")
	public String toupdateadminpwd(Integer admin_id, Model model){
		model.addAttribute("admin_id",admin_id);
		return "ship/updateadminpwd";
	}
	
	@RequestMapping("/updateadminpwd.do")
	public String updateadminpwd(SHZN_Admin admin){
		admindao.updateAdminPwd(admin);
		return "ship/close";
	}
}
