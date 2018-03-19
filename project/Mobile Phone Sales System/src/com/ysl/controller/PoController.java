package com.ysl.controller;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ysl.dao.BuserDao;
import com.ysl.dao.PhoneDao;
import com.ysl.dao.PoDao;
import com.ysl.dao.UserDao;
import com.ysl.entity.Buser;
import com.ysl.entity.Phone;
import com.ysl.entity.Po;
import com.ysl.entity.User;
import com.ysl.entity.page.PoPage;

@Controller
@RequestMapping("po")
public class PoController extends BaseController{
	@Resource
	PoDao poDao;
    @Resource
    UserDao userDao;
    @Resource
    PhoneDao phoneDao;
    @Resource
    BuserDao buserDao;

	@RequestMapping("/po.do")
	public String po(HttpSession session,Model model,PoPage page){
		Buser buser1=(Buser)session.getAttribute("Buser");
		model.addAttribute("buser", buser1);
		if(buser1==null){
			return "redirect:../login/login.do";
		}
		int buser1_id=buser1.getBuser_id();
		page.setBuser_id(buser1_id);
		
		List<Po> list =poDao.findByPage(page);
		
		model.addAttribute("polist",list);
		
		int rows=poDao.findRows(buser1_id);
		page.setRows(rows);
		
		model.addAttribute("poPage",page);
		
		Buser buser=buserDao.findById(buser1_id);
		
		model.addAttribute("buserpo",buser);
		
		
		
//		List<Po> list=poDao.findByAll(buser1_id);
//		List<User> list1=new ArrayList<User>();
//		List<Phone> list2=new ArrayList<Phone>();
//		List<Buser> list3=new ArrayList<Buser>();
//		for( Po po :list){
//			int user_id=po.getUser_id();
//			User user=userDao.findById(user_id);
//			list1.add(user); 
//			
//			int phone_id=po.getPhone_id();
//			Phone phone=phoneDao.findById(phone_id);
//			list2.add(phone);
//			
//			int buser_id=phone.getBuser_id();
//			Buser buser=buserDao.findById(buser_id);
//			list3.add(buser);
//			
//		}
//		model.addAttribute("userlist1", list1);
//		model.addAttribute("phonelist1", list2);
//		model.addAttribute("buserlist1", list3);
//		model.addAttribute("polist", list);
		return "po/po";
	}	
	@RequestMapping("/topo.do")
	public String topo(){
		 
		return "po/po";
	}
	@RequestMapping("/deletepo.do")
	public String deletepo(Integer po_id){
		
		 poDao.delete(po_id);
		return "redirect:po.do";
	}
	

	@RequestMapping("/updatefukuan.do")
	public String updatefukuan(Integer po_id,String fukuan,HttpSession session){
		Buser buser1=(Buser)session.getAttribute("Buser");
		
		if(buser1==null){
			return "redirect:../login/login.do";
		}
		Po po=new Po();
		po.setPo_id(po_id);
		if(fukuan.equals("未付款")){
			po.setFukuan("已付款");
		}else{
			po.setFukuan("未付款");
		}
		poDao.updatefukuan(po);
		return "redirect:po.do";
	}
	
	
	@RequestMapping("/updatefahuo.do")
	public String updatefahuo(Integer po_id,String fahuo){
		
		Po po=new Po();
		po.setPo_id(po_id);
		if(fahuo.equals("未发货")){
			po.setFahuo("已发货");
		}else{
			po.setFahuo("未发货");
		}
		
		
		poDao.updatefahuo(po);
		return "redirect:po.do";
	}
	@RequestMapping("/updatetuihuo.do")
	public String updatetuihuo(Integer po_id,String tuihuo){
		Po po=new Po();
		po.setPo_id(po_id);
		if(tuihuo.equals("无退货"))
		{
		    po.setTuihuo("正在退货");
		}else{
			po.setTuihuo("无退货");
		}
		poDao.updatetuihuo(po);
		return "redirect:po.do";
	}
	
	@RequestMapping("/update.do")
	public String update(Integer po_id,Model model,HttpSession session){
		Buser buser1=(Buser)session.getAttribute("Buser");
		model.addAttribute("buser", buser1);
		if(buser1==null){
			return "redirect:../login/login.do";
		}
		Po po=poDao.findById(po_id);
		model.addAttribute("updatepo", po);
	    int user_id=po.getUser_id();
	    User user=userDao.findById(user_id);
	    model.addAttribute("updateuser", user);
	    int phone_id=po.getPhone_id();
	    Phone phone=phoneDao.findById(phone_id);
	    model.addAttribute("updatephone", phone);
		return "po/po_update";
	}
	@ResponseBody
	@RequestMapping("/toupdate.do")
	public String toupdate(Integer po_id,Integer po_number,Integer po_price,HttpSession session){	
		Buser buser1=(Buser)session.getAttribute("Buser");
		if(buser1==null){
			return "redirect:../login/login.do";
		}
		Po po=new Po();
		po.setPo_id(po_id);
		po.setPo_number(po_number);
		po.setPo_price(po_price);
		poDao.update(po);
		return "1";
	}


}
