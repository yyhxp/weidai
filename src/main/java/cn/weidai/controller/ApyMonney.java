/**
 *
 */
package cn.weidai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 类名称:ApyMonney
 * 类描述:
 * 创建人:苏俊杰
 * 创建时间:2018-8-25 下午5:13:29
 */
@Controller
@RequestMapping("/Recharge")
public class ApyMonney {
	
	@RequestMapping("/monney")
	public String Recharge(){
		return "Recharge";
	}

	
	@RequestMapping("xx")
	public String ss(){
		return "indexx";
	}
}
