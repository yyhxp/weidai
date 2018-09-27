package cn.weidai.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.weidai.pojo.PayUser;
import cn.weidai.pojo.User;
import cn.weidai.service.alipay.PayUserService;

/**
 * 
 * @Title: UserController.java
 * @Package com.sihai.controller
 * @Description: 用户controller
 * Copyright: Copyright (c) 2016
 * Company:FURUIBOKE.SCIENCE.AND.TECHNOLOGY
 * 
 * @author leechenxiang
 * @date 2017年8月17日 下午8:39:47
 * @version V1.0
 */
@Controller
@RequestMapping("/users")
public class UserController {
	
	@Autowired
	private PayUserService userService;

	@RequestMapping(value = "/list")
	public ModelAndView products() throws Exception {
		
		List<PayUser> userList = userService.getUserList();
		
		ModelAndView model = new ModelAndView("user");
		model.addObject("userList", userList);
		
		return model;
	}
	
}
