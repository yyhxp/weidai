/**
 *
 */
package cn.weidai.controller;

import java.net.URLEncoder;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.weidai.tools.SMMConfig;
import cn.weidai.tools.SMS_verification;



/**
 * 类名称:SMSController
 * 类描述:短信验证
 * 创建人:苏俊杰
 * 创建时间:2018-8-11 下午2:48:13
 */

public class SMSController {
	private static String operation = "/industrySMS/sendSMS";
    private static String accountSid = SMMConfig.ACCOUNT_SID;
    public static String to=null;
    private static String code = smsCode();
//  登录验证码：{1}，如非本人操作，请忽略此短信。	
    public static String codes=code;
    private static String smsContent = "【苏辰科技】登录验证码："+code+"，如非本人操作，请忽略此短信。";

    /**
     * 验证码通知短信
     */
    
    public static void execute(){
        String tmpSmsContent = null;
        try{
          tmpSmsContent = URLEncoder.encode(smsContent, "UTF-8");
        }catch(Exception e){

        }
        String url = SMMConfig.BASE_URL + operation;
        String body = "accountSid=" + accountSid + "&to=" + to + "&smsContent=" + tmpSmsContent
            + SMS_verification.createCommonParam();

        // 提交请求
        String result = SMS_verification.post(url, body);
        System.out.println("result:" + System.getProperty("linr.separator") + result);
    }

    //创建验证码
    public static String smsCode(){
        String random=(int)((Math.random()*9+1)*100000)+""; 
        System.out.println("验证码："+random);
        return random;
    }
	
	
    
	
}
