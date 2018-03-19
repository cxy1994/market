package com.ysl.controller;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ysl.dao.PhoneDao;
import com.ysl.dao.PoDao;
import com.ysl.entity.Phone;
import com.ysl.entity.Po;
import com.ysl.entity.User;
import com.ysl.entity.page.PoPage;

@Controller
@RequestMapping("wupin")
public class wupinController extends BaseController{
	@Resource
	PoDao poDao;
	@Resource
	PhoneDao phoneDao;


	@RequestMapping("/wupin.do")
	public String wupin(Model model,HttpSession session,PoPage page){
		 User user=(User)session.getAttribute("frontuser");
		    if(user==null){
		    	return "redirect:../front/front.do";
		    }
		    int user_id=user.getUser_id();
		    page.setUser_id(user_id);
		    
		    
		    List<Po> list=poDao.findByFrontPage(page);
		    
		    int rows=poDao.findFrontRows(user_id);
		    page.setRows(rows);
		    model.addAttribute("frontpoPage",page);
		    model.addAttribute("frontpo", list);

		return "wupin/wupin";
	}
	
	@ResponseBody
	@RequestMapping("/deletewupin.do")
	public String deletewupin(Integer po_id){
		Po po=poDao.findById(po_id);
		int phone_id=po.getPhone_id();
		Phone phone=phoneDao.findById(phone_id);
		//库存
		int phoneNumber=phone.getPhone_number();
		//订单数量
		int number=po.getPo_number();
		Phone phone1=new Phone();
		phone1.setPhone_id(phone_id);
		int sunNumber=phoneNumber+number;
		//总数
		phone1.setPhone_number(sunNumber);
	    phoneDao.updateNumber(phone1);
		poDao.delete(po_id);
		return "1";
	}
	
	
	
	@RequestMapping("/yiwancheng.do")
	public String yiwancheng(Model model,HttpSession session,PoPage page){
		 User user=(User)session.getAttribute("frontuser");
		  if(user==null){
		    	return "redirect:../front/front.do";
		    }
		    int user_id=user.getUser_id();
		    page.setUser_id(user_id);
		    page.setFahuo("已发货");
	        page.setFukuan("已付款");
		    List<Po> list=poDao.findByFrontPage1(page);

         
           int rows=poDao.findFrontRows1(page);
           page.setRows(rows);
           model.addAttribute("frontpoPage1",page);
		    model.addAttribute("frontpo1", list);

		return "wupin/yiwancheng";
	}	
	@RequestMapping("/weifukuan.do")
	public String weifukuan(Model model,HttpSession session,PoPage page){
		 User user=(User)session.getAttribute("frontuser");
		  if(user==null){
		    	return "redirect:../front/front.do";
		    }
		    int user_id=user.getUser_id();
		    page.setUser_id(user_id);
		    page.setFahuo("未发货");
	        page.setFukuan("未付款");
		    List<Po> list=poDao.findByFrontPage1(page);
		  
        
          int rows=poDao.findFrontRows1(page);
          page.setRows(rows);
          model.addAttribute("frontpoPage2",page);
		    model.addAttribute("frontpo2", list);
		
		return "wupin/weifukuan";
	}
	
	
	@RequestMapping("/weifahuo.do")
	public String weifakuan(Model model,HttpSession session,PoPage page){
		 User user=(User)session.getAttribute("frontuser");
		  if(user==null){
		    	return "redirect:../front/front.do";
		    }
		    int user_id=user.getUser_id();
		    page.setUser_id(user_id);
		    page.setFahuo("未发货");
	        page.setFukuan("已付款");
		    List<Po> list=poDao.findByFrontPage1(page);
		  
        
          int rows=poDao.findFrontRows1(page);
          page.setRows(rows);
          model.addAttribute("frontpoPage3",page);
		    model.addAttribute("frontpo3", list);
		
		return "wupin/weifahuo";
	}
	
	
	@ResponseBody
	@RequestMapping("/tuihuo.do")
	public String tuihuo(Integer po_id){
		Po po=new Po();
		po.setPo_id(po_id);
		po.setTuihuo("正在退货");
		poDao.usertuihuo(po);
		return "1";
	}
	
	@ResponseBody
	@RequestMapping("/fukuan.do")
	public String fukuan(Integer po_id){
		Po po=new Po();
		po.setPo_id(po_id);
		po.setFukuan("已付款");
		poDao.userfukuan(po);
		return "1";
	}
	
	

}
