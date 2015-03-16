package com.shzn.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shzn.dao.DateShipDao;
import com.shzn.dao.ShipODao;
import com.shzn.entity.DateShip;
import com.shzn.entity.SHZN_Admin;
import com.shzn.entity.ShipO;
import com.shzn.util.DateUtil;

@Controller
@RequestMapping("/shipo")
public class ShipOController {

	@Resource
	private ShipODao shipodao;
	
	@Resource
	private DateShipDao dateshipdao;
	
	//�ύԤԼ����
	@RequestMapping("/shipoadd")
	public String toShipAdd(String ship_name, String Admin_name, int timenum){
		ShipO shipo = new ShipO();
		shipo.setAdmin_name(Admin_name);
		shipo.setTimenum(timenum);
		shipo.setShip_name(ship_name);
		shipo.setShip_role(1);
		shipodao.save(shipo);
		return "main/nopower";
	}
	
	//��ѯ�ȴ������Ԥ������
	@RequestMapping("/unshiplist")
	public String tounshiplist(HttpServletRequest request, Model model){
		SHZN_Admin admin = (SHZN_Admin)request.getSession().getAttribute("admin");
		List<ShipO> list = shipodao.unfindByName(admin.getName());
		model.addAttribute("shipo",list);
		return "ship/unshiplist";
	}
	
	//��ѯ�ѳɹ������ԤԼ
	@RequestMapping("/ushiplist")
	public String toushiplist(HttpServletRequest request, Model model){
		SHZN_Admin admin = (SHZN_Admin)request.getSession().getAttribute("admin");
		List<ShipO> list = shipodao.ufindByName(admin.getName());
		model.addAttribute("shipo",list);
		return "ship/ushiplist";
	}
	
	//ɾ���ȴ����������
	@RequestMapping("/toShipoDelete")
	public String toDelete(int ship_id, Model model){
		shipodao.delete(ship_id);
		return "redirect:unshiplist";
	}
	
	
	//�鿴Ԥ��ҳ��
	@RequestMapping("/toDateShipPage")
	public String toDateShipPage(){
		return "ship/dateshiplist";
	}
	
	@RequestMapping("todateshipTableX")
	public String toDateShipTableX(String day, Model model){
		//System.out.println(day);
		int daynum = Integer.parseInt(day);
		//System.out.println(daynum);
		DateUtil du = new DateUtil();
		DateShip dateship = new DateShip();
		dateship.setDateShip_name("�ٳ�");
		int spacifiedDay = Integer.parseInt(du.getSpecifiedDayAfter(daynum));
		dateship.setSpecitifedDay(spacifiedDay);
		dateship = dateshipdao.findByName(dateship);
		model.addAttribute("dateship",dateship);
		model.addAttribute("spacifiedDay",spacifiedDay);
		return "ship/dateshipTableX";
	}
	
}
