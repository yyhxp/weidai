package cn.weidai.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.weidai.pojo.User;

public class zhuceController {
	@Controller
	@RequestMapping(value="/user")
	public class loginController {
		private Logger logger = Logger.getLogger(loginController.class);
		
		@RequestMapping(value="/zhuce.html",method=RequestMethod.GET)
		public String doLogin(@RequestParam(value="user",required=false) User user,HttpServletRequest request,HttpSession session){
			logger.debug("doLogin====================================");
			
				return "login";
			}
	}

}