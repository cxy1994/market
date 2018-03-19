package com.ysl.controller;




import java.net.URLDecoder;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ndktools.javamd5.Mademd5;
import com.ysl.dao.UserDao;
import com.ysl.entity.User;

@Controller
@RequestMapping("zhuce")
public class zhuceController extends BaseController{
	@Resource
	private UserDao UserDao;

	
	
	@RequestMapping("/zhuce.do")
	public String login(){
		return "zhuce/zhuce";
	}	
	
	
	@ResponseBody
	@RequestMapping("/tozhuce.do")
	public String success(String username,String password,String telephone,String address,String email) throws Exception{
		User alreadyUser=UserDao.findByName(username);
		if(alreadyUser!=null){
			return "0";
		}
		User user=new User();
		Mademd5 md = new Mademd5();
		user.setUsername(username);
		user.setUserpassword(md.toMd5(password));
		user.setAddress(URLDecoder.decode(address, "UTF-8"));
		user.setEmail(email);
		user.setTelephone(telephone);
		user.setLogin("0");
		UserDao.add(user);
		return "1";
	}
	@RequestMapping("/zhuce_success.do")
	public String zhuce_success(String username,HttpServletRequest request,Model model){

		model.addAttribute("username",username);
		return "zhuce/zhuce_success";
	}	
	

	

}
