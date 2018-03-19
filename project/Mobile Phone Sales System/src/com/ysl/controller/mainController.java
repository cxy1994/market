package com.ysl.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.ysl.dao.PhoneDao;
import com.ysl.entity.Buser;
import com.ysl.entity.Phone;
import com.ysl.entity.page.PhonePage;
import com.ysl.util.Fileupload;

@Controller
@RequestMapping("main")
public class mainController extends BaseController {
	@Resource
	PhoneDao phoneDao;


	@RequestMapping("/main.do")
	public String login(Model model, HttpSession session, PhonePage page) {
		Buser buser = (Buser) session.getAttribute("Buser");
		if (buser == null) {
			return "redirect:../login/login.do";
		}
		page.setBuser_id(buser.getBuser_id());
		List<Phone> list = phoneDao.findByPage(page);
		model.addAttribute("phonelist", list);
		// 查询总行数，计算出总页数，传递给页面
		int rows = phoneDao.findRows(buser.getBuser_id());
		page.setRows(rows);
		model.addAttribute("phonePage", page);
		model.addAttribute("buser", buser);

		return "login/main";
	}

	@RequestMapping("/addmain.do")
	public String addmain(HttpSession session, Model model) {
		Buser buser = (Buser) session.getAttribute("Buser");
		model.addAttribute("buser", buser);
		if (buser == null) {
			return "redirect:../login/login.do";
		}
		return "login/main_add";
	}

	@RequestMapping("/toaddmain.do")
	public String toaddmain(int buser_id, String phonename, int phone_price,
			int phone_number, HttpServletRequest request) {
		String RealPath = request.getSession().getServletContext().getRealPath(
				"");
		String bussImagePath = RealPath + "/upload";
		MultipartFile imageFile = Fileupload.fileupload(request, bussImagePath,
				"fileUpload");
		String picture = imageFile.getOriginalFilename();
		String fenlei = request.getParameter("fenlei");
		Phone phone = new Phone();
		phone.setPhonename(phonename);
		phone.setPhone_number(phone_number);
		phone.setPhone_price(phone_price);
		phone.setBuser_id(buser_id);
		phone.setPicture(picture);
		phone.setFenlei(fenlei);
		phoneDao.add(phone);
		return "redirect:main.do";
	}

	@RequestMapping("/xiangqing1.do")
	public String xiangqing1(Integer phone_id, Model model, HttpSession session) {
		Buser buser = (Buser) session.getAttribute("Buser");
		model.addAttribute("buser", buser);
		if (buser == null) {
			return "redirect:../login/login.do";
		}
		Phone phone = phoneDao.findById(phone_id);
		model.addAttribute("phone", phone);
		return "login/xiangqing1";
	}

	@RequestMapping("/deletemain.do")
	public String deletemain(Integer phone_id) {
		phoneDao.delete(phone_id);
		return "redirect:main.do";
	}

	@RequestMapping("/updatemain.do")
	public String updatemain(Integer phone_id, Model model, HttpSession session) {
		Buser buser = (Buser) session.getAttribute("Buser");
		model.addAttribute("buser", buser);
		if (buser == null) {
			return "redirect:../login/login.do";
		}
		Phone phone = phoneDao.findById(phone_id);
		model.addAttribute("phoneupdate", phone);

		return "login/main_update";
	}

	@RequestMapping("/toupdatemain.do")
	public String toupdatemain(Model model, Phone phone) {
		phoneDao.update(phone);
		return "redirect:main.do";
	}

	@RequestMapping("/tuichu.do")
	public String tuichu(HttpSession session) {
		session.removeAttribute("Buser");
		return "redirect:../login/login.do";
	}

}
