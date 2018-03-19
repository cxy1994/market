package com.ysl.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ndktools.javamd5.Mademd5;
import com.ysl.dao.BuserDao;
import com.ysl.dao.CarDao;
import com.ysl.dao.PhoneDao;
import com.ysl.dao.PoDao;
import com.ysl.dao.UserDao;
import com.ysl.entity.Buser;
import com.ysl.entity.Car;
import com.ysl.entity.Phone;
import com.ysl.entity.Po;
import com.ysl.entity.User;
import com.ysl.entity.page.CarPage;

@Controller
@RequestMapping("gouwuche")
public class gouwucheController extends BaseController {
	@Resource
	CarDao carDao;
	@Resource
	PhoneDao phoneDao;
	@Resource
	UserDao userDao;
	@Resource
	PoDao poDao;
	@Resource
	BuserDao buserDao;
	Mademd5 md;

	private static final String NIMING = "niming";
	
	private static boolean flag=true;

	@RequestMapping("/gouwuche.do")
	public String login(Model model, CarPage page, HttpSession session) {

		User user = (User) session.getAttribute("frontuser");
		int user_id;
		int niMingRows=0;
		if (user == null) {
			user = userDao.findByName(NIMING);
			if (user == null) {
				user = new User();
				user.setUsername(NIMING);
				String encryptionPassword = md.toMd5(NIMING);
				user.setUserpassword(encryptionPassword);
				userDao.add(user);
			}
			// return "redirect:../front/front.do";
			user_id = userDao.findByName(NIMING).getUser_id();
			page.setUser_id(user_id);
			List<Car> list = carDao.findByPage(page);
			for(Car car:list){
				Buser buser=buserDao.findById(car.getBuser_id());
				if(buser!=null){
					car.setBuername(buser.getBusername());
				}
				
			}
			model.addAttribute("carlist", list);
			int rows = carDao.findRows(user_id);
			page.setRows(rows);
			model.addAttribute("carPage", page);
		} else {
			user_id = user.getUser_id();
			if (userDao.findByName(NIMING) != null&&(flag||user.isLogin().equals("1"))) {
				int niMingId=userDao.findByName(NIMING).getUser_id();
				page.setUser_id(user_id);
				page.setNimingUser_id(niMingId);
				List<Car>  niMingCar = carDao.findByPageForNiMing(page);
				for(Car car:niMingCar){
					Buser buser=buserDao.findById(car.getBuser_id());
					if(buser!=null){
						car.setBuername(buser.getBusername());
					}
					
				}
				niMingRows=carDao.findRowsForNiMing(page);
				model.addAttribute("carlist", niMingCar);
				page.setRows(niMingRows);
				model.addAttribute("carPage", page);
				if(user.isLogin().equals("0")){
					user.setLogin("1");
					userDao.updateByLogin(user);
				}		
				flag=false;
			}
			else{
				page.setUser_id(user_id);
				List<Car>  carlist = carDao.findByPage(page);
				for(Car car:carlist){
					Buser buser=buserDao.findById(car.getBuser_id());
					if(buser!=null){
						car.setBuername(buser.getBusername());
					}
					
				}
				niMingRows=carDao.findRows(user_id);
				model.addAttribute("carlist", carlist);
				page.setRows(niMingRows);
				model.addAttribute("carPage", page);
			}
			
		}

		

		return "gouwuche/gouwuche";
	}

	@RequestMapping("/deletegouwuche.do")
	public String delete(Integer car_id) {
		carDao.delete(car_id);
		return "redirect:gouwuche.do";
	}

	/**
	 * @param phonename
	 * @param number
	 * @param price
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/tijiao.do")
	public String tijiao(HttpSession session, String phonename, Integer number,
			Integer price, Integer car_id, Integer buser_id) {
		User user = (User) session.getAttribute("frontuser");
		if (user == null) {
			return "redirect:../login/login.do";
		}
		Phone phone = phoneDao.findByName(phonename);
		// 判断提交的订单的数量是否小于库存的数量，小于则执行下面语句，大于则返回0;
		if (phone.getPhone_number() < number) {
			return "0";
		}
		int phone_id = phone.getPhone_id();
		Po po = new Po();
		po.setBuser_id(buser_id);
		po.setUser_id(user.getUser_id());
		po.setPhone_id(phone_id);
		po.setPo_bianhao("10010" + phone_id);
		po.setPo_number(number);
		po.setPo_price(price);
		po.setFahuo("未发货");
		po.setFukuan("未付款");
		po.setTuihuo("无退货");
		poDao.add(po);
		carDao.delete(car_id);

		// 修改订单提交后的库存数量
		Phone numberPhone = new Phone();
		numberPhone.setPhone_id(phone_id);
		int phoneNumber = phone.getPhone_number() - number;
		numberPhone.setPhone_number(phoneNumber);
		phoneDao.updateNumber(numberPhone);

		return "1";
	}

}
