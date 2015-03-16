package com.shzn.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("list")
public class ShipListController {
	
	
	


	
	@RequestMapping("/shiphome.do")
	public String shipHome(){
		return "test/shiphome";
	}
	
	@RequestMapping("/help.do")
	public String tohelp(){
		return "test/help";
	}
	
	@RequestMapping("/about.do")
	public String toAbout(){
		return "test/about";
	}

}
