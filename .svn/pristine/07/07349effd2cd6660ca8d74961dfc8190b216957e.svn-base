package cn.weidao.intercepttors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import cn.weidai.pojo.User;
import cn.weidai.tools.Constants;

public class loginlanjieqi extends HandlerInterceptorAdapter {

	private Logger logger = Logger.getLogger(loginlanjieqi.class);
	

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler) throws Exception {
		
		logger.debug("进入拦截器--------------");
		String uri = request.getRequestURI();
        //UTL:除了login.jsp是可以公开访问的，其他的URL都进行拦截控制
        if (uri.indexOf("/login") >= 0) {
            return true;
        }
        //获取session
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute(Constants.USER_SESSION);
        //判断session中是否有用户数据，如果有，则返回true，继续向下执行
        if (user != null) {
            return true;
        }else {
		//不符合条件的给出提示信息，并转发到登录页面
        request.setAttribute("msg", "您还没有登录，请先登录！");
        request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
        return false;
    }

	}
	}
