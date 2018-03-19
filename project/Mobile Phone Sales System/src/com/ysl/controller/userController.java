package com.ysl.controller;

import javax.annotation.Resource;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ysl.dao.UserDao;
import com.ysl.entity.User;

@Controller
@RequestMapping("user")
public class userController extends BaseController{

    @Resource
    UserDao userDao;
	
	@RequestMapping("/user.do")
	public String user(HttpSession session,Model model){
		User user=(User)session.getAttribute("frontuser");
		if(user==null){
			return "redirect:../front/front.do";
		}
		user=userDao.findByName(user.getUsername());		
		model.addAttribute("usercenter", user);
		return "user/user";
	}
	
	@ResponseBody
	@RequestMapping("/updateuser.do")
	public String updateuser(ServletResponse response,ServletRequest request,String username,String realname,String sex,String email,Integer user_id) throws Exception{
		response.setContentType("utf-8");
		request.setCharacterEncoding("utf-8");
		User user=new User();
		user.setUsername(username);
		user.setRealname(realname);
		user.setSex(sex);
		user.setEmail(email);
		user.setUser_id(user_id);
		userDao.update(user);
		return "1";
	}
	
	
	
	
	
	
	@RequestMapping("/user_safe.do")
	public String user_safe(HttpSession session,Model model){
		
		User user=(User)session.getAttribute("frontuser");
		user=userDao.findByName(user.getUsername());
		model.addAttribute("safeuser", user);
		return "user/user_safe";
	}
	
	@ResponseBody
	@RequestMapping("/update_safe.do")
	public String update_safe(String newpassword,String newtelephone,Integer user_id){
		User user=new User();
		user.setUser_id(user_id);
		user.setTelephone(newtelephone);
		user.setUserpassword(newpassword);
		userDao.updateBySafe(user);
		return "1";
	}
	
	
	@RequestMapping("/user_address.do")
	public String user_address(HttpSession session,Model model){
		User user=(User)session.getAttribute("frontuser");
		user=userDao.findByName(user.getUsername());
		model.addAttribute("addressuser", user);
		return "user/user_address";
	}
	
	@ResponseBody
	@RequestMapping("/update_address.do")
	public String update_address(String newaddress,Integer user_id){
		User user=new User();
		user.setAddress(newaddress);
		user.setUser_id(user_id);
		userDao.updateByAddress(user);
		return "1";
	}
	
}
