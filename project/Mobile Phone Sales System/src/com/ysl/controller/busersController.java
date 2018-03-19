package com.ysl.controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ysl.dao.BuserDao;
import com.ysl.entity.Buser;

@Controller
@RequestMapping("busers")
public class busersController extends BaseController{
    @Resource
    BuserDao buserDao;
   
	@RequestMapping("/busers.do")
	public String login(Model model,HttpSession session){
		Buser buser=(Buser)session.getAttribute("Buser");
		if(buser==null){
			return "redirect:../login/login.do";
		}
		model.addAttribute("buser", buser);
		model.addAttribute("buserziliao", buser);
		return "busers/busers";
	}	
	

}
