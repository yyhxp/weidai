/**
 *
 */
package cn.weidai.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.weidai.pojo.Bank;
import cn.weidai.pojo.User;
import cn.weidai.service.user.UserService;

/**
 * 类名称:UserCardController
 * 类描述:Card表单控制器 存储数据到数据库
 * 创建人:苏俊杰
 * 创建时间:2018-8-18 上午11:02:36
 */
@Controller
@RequestMapping("/nice")
public class UserCardController1 { 
	
	@Resource
	private UserService users;
	
	@RequestMapping("/back")
	public String Back(){
		return "index";
	}
	@RequestMapping("/ok")
	public String getUserCard(@RequestParam("ubUsername")String ubUsername,
			@RequestParam("ubIdcard")String ubIdcard,@RequestParam("ubBanknum")String ubBanknum,
			@RequestParam("ubTelephone")String ubTelephone,@RequestParam("ubPassword2")String ubPassword2
			,HttpServletRequest request
			){
		//查询用户id
		User user=new User();
		user.setuName(ubUsername);
		user.setuIDCard(ubIdcard);
		int count=users.getUserCard(user);
		if(count==1){
			return "usercard";
		}
		//增加用户信息(bank表)
		Bank bank=new Bank();
		bank.setuId(count);
		bank.setBkCardnum(ubBanknum);
		bank.setBkPhone(ubTelephone);
		bank.setBkPayPassword(ubPassword2);
		bank.setuIDCard(ubIdcard);
		int counts=users.addUserCard(bank);
		return "usercard";
	}
	
	
}
