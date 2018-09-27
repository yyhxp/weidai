package cn.weidai.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.weidai.pojo.User;
import cn.weidai.service.user.UserService;
import cn.weidai.tools.Constants;


/**
 * 类名称:UsercardController
 * 类描述:表单控制器
 * 创建人:苏俊杰
 * 创建时间:2018-8-11 上午11:21:31
 */
@Controller
@RequestMapping("/User")
public class UsercardController  {
	
	@Resource
	private UserService users;
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String card(@RequestParam(value="name",required=false)String name ,@RequestParam(value="idCard",required=false)String idCard
			,HttpServletRequest request,HttpSession session){
		User user=new User();
		user.setuIDCard(idCard);
		user.setrName(name);
		int count=users.getUserInfo(user);
		System.out.println(count);
		System.out.println(idCard);
		System.out.println(name);
		if(count>1){
			if(name.length()>=2&&name.length()<=4){
				request.setAttribute("name", name);
				request.setAttribute("idCard", idCard);
				return "usercard";
			}
			return "usercard";
		}else{
			return "userinfo";
		}
	}

	
	
	
	
	
	
}
