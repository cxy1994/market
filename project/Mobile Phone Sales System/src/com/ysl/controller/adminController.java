package com.ysl.controller;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ndktools.javamd5.Mademd5;
import com.ysl.dao.BuserDao;
import com.ysl.dao.UserDao;
import com.ysl.entity.Buser;
import com.ysl.entity.User;

@Controller
@RequestMapping("admin")
public class adminController extends BaseController{
    @Resource
    BuserDao buserDao;
    @Resource
    UserDao userDao;
    
	@RequestMapping("/admin.do")
	public String admin(Model model){
        List<Buser> list=buserDao.findAll();
        model.addAttribute("buserlist",list);
		return "admin/admin";
	}	
	
	@RequestMapping("/admin_user.do")
	public String admin_user(Model model){
        List<User> list1=userDao.findAll();
        model.addAttribute("us", list1);
		return "admin/admin_user";
	}	
	
	@RequestMapping("/delete_buser.do")
	public String delete_buser(Integer buser_id){
        buserDao.deletebuser(buser_id);
		return "redirect:admin.do";
	}	
	
	@RequestMapping("/delete_user.do")
	public String delete_user(Integer user_id){
        userDao.deleteuser(user_id);
		return "redirect:admin_user.do";
	}
	
	@RequestMapping("/reset_user.do")
	public String reset_user(Integer user_id){
		User user=userDao.findById(user_id);
		Mademd5 md = new Mademd5();
		String mdPassword=md.toMd5("123456");
		user.setUserpassword(mdPassword);
		userDao.updateByPassword(user);
		return "redirect:admin_user.do";
	}
	
	

}
