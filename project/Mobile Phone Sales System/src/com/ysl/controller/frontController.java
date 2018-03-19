package com.ysl.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ndktools.javamd5.Mademd5;
import com.ysl.dao.CarDao;
import com.ysl.dao.PhoneDao;
import com.ysl.dao.ShouCangDao;
import com.ysl.dao.UserDao;
import com.ysl.entity.Car;
import com.ysl.entity.Phone;
import com.ysl.entity.ShouCang;
import com.ysl.entity.User;
import com.ysl.entity.page.PhonePage;
import com.ysl.util.ImageUtil;

@Controller
@RequestMapping("front")
public class frontController extends BaseController {
	@Resource
	UserDao userDao;
	@Resource
	PhoneDao phoneDao;
	@Resource
	CarDao carDao;
	@Resource
	ShouCangDao shouCangDao;

	private final String NIMING = "niming";

	private Mademd5 md = new Mademd5();

	@RequestMapping("/front.do")
	public String login(Model model, HttpSession session, PhonePage page,
			HttpServletRequest request) {
		String fenlei = request.getParameter("fenlei");
		String jiage = request.getParameter("jiage");
		String type = request.getParameter("paixu");
		final String jiage_enabled = request.getParameter("jiage_enabled");
		String kucun_type = request.getParameter("kucun_paixu");
		final String kucun_enabled = request.getParameter("kucun_enabled");
		String leixing_type = request.getParameter("leixing_paixu");
		final String leixing_enabled = request.getParameter("leixing_enabled");
		String sousuo = request.getParameter("sousuo");

		List<Integer> pricelist = new ArrayList<Integer>();
		List<Integer> fenleilist = new ArrayList<Integer>();
		if (jiage != null && jiage.length() > 0) {
			String[] jiaindex = jiage.split("-");
			for (int i = 0; i < jiaindex.length; i++) {
				pricelist.add(new Integer(jiaindex[i]));

			}
		}

		if (fenlei != null && fenlei.length() > 0) {
			String[] fenleiindex = fenlei.split(",");
			for (int i = 0; i < fenleiindex.length; i++) {
				if (fenleiindex[i].equals("手机") || fenleiindex.equals("1")) {
					fenleilist.add(1);
				} else if (fenleiindex[i].equals("服饰")
						|| fenleiindex.equals("2")) {
					fenleilist.add(2);
				} else if (fenleiindex[i].equals("酒类")
						|| fenleiindex.equals("3")) {
					fenleilist.add(3);
				} else if (fenleiindex[i].equals("电器")
						|| fenleiindex.equals("4")) {
					fenleilist.add(4);
				} else if (fenleiindex[i].equals("化妆品")
						|| fenleiindex.equals("5")) {
					fenleilist.add(5);
				} else if (fenleiindex[i].equals("生活用品")
						|| fenleiindex.equals("6")) {
					fenleilist.add(6);
				}

			}
		}
		page.setPageSize(12);
		page.setFenleilist(fenleilist);
		model.addAttribute("fenleicheckbox", fenleilist);
		page.setPricelist(pricelist);
		model.addAttribute("priceRadio", pricelist);
		if (sousuo != null && sousuo.length() > 0) {
			page.setSousuo(sousuo);
		}

		List<Phone> list = phoneDao.findByFrontPage(page);
		if (type != null && type.equals("2")) {
			Collections.sort(list, new Comparator<Phone>() {

				public int compare(Phone o1, Phone o2) {
					// TODO Auto-generated method stub
					if (jiage_enabled != null
							&& Boolean.parseBoolean(jiage_enabled)) {
						return o2.getPhone_price().compareTo(
								o1.getPhone_price());
					} else {
						return o1.getPhone_price().compareTo(
								o2.getPhone_price());
					}

				}
			});
		} else if (kucun_type != null && kucun_type.equals("3")) {
			Collections.sort(list, new Comparator<Phone>() {

				public int compare(Phone o1, Phone o2) {
					// TODO Auto-generated method stub
					if (kucun_enabled != null
							&& Boolean.parseBoolean(kucun_enabled)) {
						return o2.getPhone_number().compareTo(
								o1.getPhone_number());
					} else {
						return o1.getPhone_number().compareTo(
								o2.getPhone_number());
					}

				}
			});
		} else if (leixing_type != null && leixing_type.equals("1")) {
			Collections.sort(list, new Comparator<Phone>() {

				public int compare(Phone o1, Phone o2) {
					// TODO Auto-generated method stub
					if (leixing_enabled != null
							&& Boolean.parseBoolean(leixing_enabled)) {
						return o2.getFenlei().compareTo(o1.getFenlei());
					} else {
						return o1.getFenlei().compareTo(o2.getFenlei());
					}

				}
			});
		}

		model.addAttribute("sortPrice", jiage_enabled);

		model.addAttribute("sortKucun", kucun_enabled);

		model.addAttribute("sortLeixing", leixing_enabled);

		int rows = phoneDao.findFrontRows(page);
		page.setRows(rows);
		model.addAttribute("frontPage", page);
		List<Phone> reallist=new ArrayList<Phone>();
		for(int i=(page.getCurrentPage()-1)*page.getPageSize();i<page.getCurrentPage()*page.getPageSize();i++){
			if(i>=list.size()){
				break;
			}
			reallist.add(list.get(i));
		}
		
		
		model.addAttribute("phoneAll", reallist);
		User user = (User) session.getAttribute("frontuser");
		model.addAttribute("user1", user);

		List<Phone> phone = phoneDao.findByAll();

		model.addAttribute("phone1", phone);

		String path = request.getContextPath();
		model.addAttribute("path", path);
		return "front/front_main";
	}

	@RequestMapping("/createImage.do")
	public void checkImage(HttpServletResponse response, HttpSession session)
			throws IOException {
		Map<String, BufferedImage> map = ImageUtil.createImage();
		// 获取验证码
		String code = map.keySet().iterator().next();
		session.setAttribute("imageCode", code);
		// 获取图片
		BufferedImage img = map.get(code);
		response.setContentType("image/jpeg");
		OutputStream os = response.getOutputStream();
		ImageIO.write(img, "jpeg", os);
	}

	@ResponseBody
	@RequestMapping("/tofront.do")
	public int tologin(String username, String password, String yanzhengma,
			HttpSession session, Model model) {
		User user = userDao.findByName(username);
		// md = new Mademd5();
		String encryptionPassword = md.toMd5(password);
		String imageCode = (String) session.getAttribute("imageCode");
		if (user == null) {
			return 0;
		} else if (!user.getUserpassword().equals(encryptionPassword)) {
			return 1;
		} else if (!yanzhengma.equalsIgnoreCase(imageCode)) {
			return 2;
		} else {
			session.setAttribute("frontuser", user);
			return 3;
		}
	}

	@RequestMapping("/removefront.do")
	public String removefront(HttpSession session) {
		session.removeAttribute("frontuser");
		return "redirect:front.do";
	}

	@RequestMapping("/addcar.do")
	public String addcar(Integer phone_id, Integer user_id) {
		Phone phone = phoneDao.findById(phone_id);
		Car car = new Car();
		if (user_id == -1) {
			User user = userDao.findByName(NIMING);
			if (user == null) {
				User niMing = new User();
				niMing.setUsername(NIMING);
				String encryptionPassword = md.toMd5(NIMING);
				niMing.setUserpassword(encryptionPassword);
				userDao.add(niMing);
			}
			car.setUser_id(userDao.findByName(NIMING).getUser_id());
		} else {
			car.setUser_id(user_id);
		}

		car.setPhone_id(phone_id);
		car.setCar_number(1);
		car.setCar_price(phone.getPhone_price());
		carDao.add(car);
		return "redirect:front.do";
	}

	@ResponseBody
	@RequestMapping("/toShouCang.do")
	public int shouCang(HttpSession session, Model model, int phone_id) {
		User user = (User) session.getAttribute("frontuser");
		if (user == null) {
			return -1;
		}
		ShouCang sc = shouCangDao.findByPhoneId(phone_id);
		if (sc != null) {
			return 2;
		}

		Phone phone = phoneDao.findById(phone_id);
		if (phone != null) {
			ShouCang shoucang = ShouCang.getInstance();
			shoucang.setPhone_id(phone_id);
			shoucang.setUser_id(user.getUser_id());
			shouCangDao.add(shoucang);
			return 1;
		}
		return 0;
	}

}
