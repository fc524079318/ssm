package com.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.model.bean.UserInfo;
import com.ssm.model.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userservice;
	@RequestMapping("selectUser")	
	public String selectUser(Model model){
		//调用service
		List<UserInfo> list=userservice.selectUsers();
		System.out.println(list.size());
		model.addAttribute("resultList",list);
		return "forward:select.jsp";
		
	}
}
