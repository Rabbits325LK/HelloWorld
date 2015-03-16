package com.shzn.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shzn.dao.SHZN_AdminDao;
import com.shzn.entity.SHZN_Admin;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Resource
	private SHZN_AdminDao admindao;
	
	@RequestMapping("/testsignwait.do")
	public String toSignWait(){
		return "main/signwait";
	}
	
	
	
}
