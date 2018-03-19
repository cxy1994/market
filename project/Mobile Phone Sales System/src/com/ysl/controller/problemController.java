package com.ysl.controller;




import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ysl.dao.ProblemDao;
import com.ysl.dao.UserDao;
import com.ysl.entity.Buser;
import com.ysl.entity.Problem;
import com.ysl.entity.User;
import com.ysl.entity.page.ProblemPage;

@Controller
@RequestMapping("problem")
public class problemController extends BaseController{
	@Resource
	UserDao userDao;
	@Resource
	ProblemDao problemDao;
	
	@RequestMapping("/problem.do")
	public String problem(HttpSession session,Model model){
		User user=(User)session.getAttribute("frontuser");
	    if(user==null){
	    	return "redirect:../front/front.do";
	    }
	    model.addAttribute("userfankui",user);
		return "problem/problem";
	}

	@ResponseBody
    @RequestMapping("/problemsuccess.do")	
	public Integer problemsuccess(String username,String zhuti,String neirong) {
	
    	 User user=userDao.findByName(username);
		
   	 if(user==null){
   		return 0;
   	 }
   	 else{
         Integer user_id=user.getUser_id();
         Problem problem=new Problem(user_id,zhuti,neirong);
         problemDao.add(problem);
   		return 1;
   	 }
		
	}
    
    

	@RequestMapping("/fankui.do")
	public String fankui(Model model,ProblemPage page,HttpSession session){
		Buser buser=(Buser)session.getAttribute("Buser");
	    if(buser==null){
	    	return "redirect:../login/login.do";
	    }
		model.addAttribute("buser", buser);
		List<Problem> list=problemDao.findByPage(page);
		model.addAttribute("fankuis", list);
		
		int rows=problemDao.findRows();
		page.setRows(rows);
		model.addAttribute("problemPage", page);
		
		return "problem/fankui";
	}	
	
	
	@RequestMapping("/deletefankui.do")
	public String delete(int fankui_id) {
		problemDao.delete(fankui_id);
		return "redirect:fankui.do";
	}


}
