package cn.weidai.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



import cn.weidai.pojo.User;
import cn.weidai.service.user.UserService;
import cn.weidai.tools.Constants;

@Controller
@RequestMapping(value="/users")
public class LoginoutController {

	private Logger logger = Logger.getLogger(LoginoutController.class);
	@Resource
	private UserService us;
	 /**
     *  注销  退出功能
     */
	
   @RequestMapping(value="/logindo.html")
    public String  logout(HttpSession session){
	   session.removeAttribute(Constants.USER_SESSION);
	   session.invalidate();
	   return "logindo";
	   
   }

   /**
    * 
    *  注册
    */
   @RequestMapping(value="/Registers1",method=RequestMethod.GET)
   public String  loginzhuce1(@RequestParam(value="uPhone",required=false)String uPhone,@RequestParam(value="uPassword",required=false)String uPassword,HttpServletRequest request){
	   
	   return "register";
   }
   
   @RequestMapping(value="/Registers",method=RequestMethod.POST)
  // @ResponseBody
     public String  loginzhuce(@RequestParam(value="uPhone",required=false)String uPhone,@RequestParam(value="uPassword",required=false)String uPassword,HttpServletRequest request){
	   logger.info(uPhone);
	   logger.info(uPassword);
	   User user=new User();
	   user.setuPhone(uPhone);
	   user.setuPassword(uPassword);
	   us.getuserzhuce1(uPhone, uPassword);
	   if (uPhone!=null) {
        	 request.setAttribute("error", "注册成功");
		}else {
			 request.setAttribute("error", "用户名不能为空");
		}
	     if (uPassword==null) {
	    	 request.setAttribute("error", "请输入用户名密码");
		}
      
     return "index";
   
   
   }
   
   
  
   /**
    * 
    * 忘记密码1
    */
   
   
   @RequestMapping(value="/modify9", method=RequestMethod.POST)
   @ResponseBody
   public String  loginmima3(@RequestParam (value="uPhone",required=false)String uPhone,@RequestParam (value="uIDCard",required=false)String uIDCard,HttpServletRequest request){
	     User user=new User();
		 user.setuPhone(uPhone);
	    int users=us.getwangji(uPhone);
	    String exist=null;
	     if (users==0) {
	    	 exist="nodata";
		}
	     logger.debug(uPhone);
	     System.out.println(uPhone);
	   return exist;
   }
   
   
   
   
   
   
   
   @RequestMapping(value="/modify.html", method=RequestMethod.GET)
   public String  loginmima1(@RequestParam (value="uPhone",required=false)String uPhone,@RequestParam (value="uIDCard",required=false)String uIDCard,HttpServletRequest request){
	   return "modifypwd1";
   }
   @RequestMapping(value="/modify1.html", method=RequestMethod.POST)
   // @ResponseBody
      public String  loginmima(@RequestParam (value="uPhone",required=false)String uPhone,@RequestParam (value="uIDCard",required=false)String uIDCard,HttpServletRequest request ){
	   User user=new User();
		 user.setuPhone(uPhone);
		 user.setuIDCard(uIDCard);
		 logger.info(uPhone);
		 logger.info(uIDCard);
		User users=us.getwangjimima(user);
		 if (users==null) {
			request.setAttribute("err", "手机号或身份证号不正确");
			return "modifypwd1";
		}else {
			 return "modifypwd2"; 
		}

    }
   /**
    * 
    * 忘记密码2
    */
   
   @RequestMapping(value="/modify2.html", method=RequestMethod.POST)
   public String  loginmima2(@RequestParam(value="uPassword",required=false)String uPassword,HttpSession session){
	  /* String uPhone =(String)session.getAttribute(Constants.USER_SESSION);
	   int st=us.getxiugai(uPassword, uPhone);*/
   return "modifypwd2";
   }
   @RequestMapping(value="/modify3.html", method=RequestMethod.POST)
   public String  loginmima3(User user){
 
    logger.debug("-=========================================== 进入忘记密码22");
   return "modifypwd2"; }

   /**
    * 
    * 忘记密码3
    */
   
   @RequestMapping(value="/modify4.html", method=RequestMethod.GET)
   public String  loginmima4(User user){
   return "modifypwd3";
   }  @RequestMapping(value="/modify5.html", method=RequestMethod.POST)
   public String  loginmima5(User user){
 
    logger.debug("-=========================================== 进入忘记密码33");
   return "modifypwd3";
   

   }
}