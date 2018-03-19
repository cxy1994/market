
package com.ysl.controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ndktools.javamd5.Mademd5;
import com.ysl.dao.BuserDao;
import com.ysl.entity.Buser;

@Controller
@RequestMapping("login")
public class loginController extends BaseController{
   @Resource
   BuserDao buserDao;
   Mademd5 md;

	@RequestMapping("/login.do")
	public String login(){
		
		return "login/loginnew";
	}	
	
	@ResponseBody
	@RequestMapping("/tologin.do")
	public int tologin(String buser,String buser_password,HttpSession session){
		
        Buser b=buserDao.findByName(buser);
        md=new Mademd5();
        String encryptionPassword=md.toMd5(buser_password);
       if(b==null){
    	   return 0;
       }
       else if(b.getBusername().equals("admin"))
       {
       	return 3;
       }
       else if(!b.getBuserpassword().equals(buser_password)){
    	   return 1;
       }
       else
       {   session.setAttribute("Buser",b);
    	   return 2;
       }
		
	}
	
	
	
	@RequestMapping("/zhuce.do")
	public String zhuce(){
		
		return "login/zhuce";
	}
	
	@ResponseBody
	@RequestMapping("/tozhuce.do")
	public int tozhuce(String busername,String buserpassword,String busershenfenzheng,String busertelephone){
		Buser buser=new Buser();
		buser.setBusername(busername);
		buser.setBuserpassword(buserpassword);
		buser.setBusershenfenzheng(busershenfenzheng);
		buser.setBusertelephone(busertelephone);
		buserDao.add(buser);
		return 1;
	}

}
