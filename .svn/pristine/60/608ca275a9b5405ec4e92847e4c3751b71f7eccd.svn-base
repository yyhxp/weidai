package com.my.time;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.WebApplicationContext;
public class MyTimerListener implements ServletContextListener {
	private BugXmlTimer  bugXmlTimer ;
	public void contextDestroyed(ServletContextEvent event) {
		// TODO Auto-generated method stub
		bugXmlTimer.timerStop();
	}

	public void contextInitialized(ServletContextEvent event) {
		ApplicationContext act = (ApplicationContext) event.getServletContext()
				.getAttribute(WebApplicationContext.ROOT_WEB_APPLICATION_CONTEXT_ATTRIBUTE);
		bugXmlTimer=new BugXmlTimer(act);
		bugXmlTimer.timerStart();
	}

}
