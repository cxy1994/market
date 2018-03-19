package com.ysl.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ysl.dao.BuserDao;
import com.ysl.dao.PhoneDao;
import com.ysl.dao.ShouCangDao;
import com.ysl.entity.Buser;
import com.ysl.entity.Phone;
import com.ysl.entity.ShouCang;
import com.ysl.entity.User;
import com.ysl.entity.page.ShouCangPage;

@Controller
@RequestMapping("shoucang")
public class shouCangController extends BaseController {

	@Resource
	ShouCangDao shouCangDao;
	@Resource
	PhoneDao phoneDao;
	@Resource
	BuserDao buserDao;

	@RequestMapping("/shoucang.do")
	public String shouCang(Model model, ShouCangPage page, HttpSession session) {
		User user = (User) session.getAttribute("frontuser");
		if (user == null) {
			return "redirect:../front/front.do";
		}
		page.setUser_id(user.getUser_id());
		List<ShouCang> shouCangList = shouCangDao.findByPage(page);
		for (ShouCang shoucang : shouCangList) {
			int phone_id = shoucang.getPhone_id();
			Phone phone = phoneDao.findById(phone_id);
			if (phone != null) {
				shoucang.setPhoneName(phone.getPhonename());
				shoucang.setPhone_price(phone.getPhone_price());
				shoucang.setPhone_picture(phone.getPicture());
				shoucang.setChicun(phone.getChicun());
				shoucang.setMemery(phone.getMemery());
				shoucang.setCpu(phone.getCpu());
				shoucang.setFenbianlv(phone.getFenbianlv());
				shoucang.setBehind(phone.getBehind());
				shoucang.setFront(phone.getFront());

				int buser_id = phone.getBuser_id();
				Buser buser = buserDao.findById(buser_id);
				if (buser != null) {
					shoucang.setBuserName(buser.getBusername());
				}
			}

		}
		int rows = shouCangDao.findRows(user.getUser_id());
		page.setRows(rows);
		model.addAttribute("shouCangList", shouCangList);
		model.addAttribute("shouCangPage", page);
		return "shoucang/shoucang";
	}
	
	@RequestMapping("/deleteshoucang.do")
	public String deleteShouCang(Integer shoucang_id){
		if(shoucang_id!=null){
			shouCangDao.delete(shoucang_id);
		}
		return "redirect:shoucang.do";
	}
	

}
