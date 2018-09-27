package com.my.time;

import java.util.Calendar;
import java.util.Date;
import java.util.Timer;

import javax.annotation.Resource;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;
public class BugXmlTimer {
	private ApplicationContext act;
	public   Timer timer;
	
	public BugXmlTimer() {
	}

	public BugXmlTimer(ApplicationContext act) {
		this.act = act;
	}

	public void timerStart(){
		// 指定的任务，从指定的延迟后，开始进行重复执行。
		Calendar calendar = Calendar.getInstance();
		int year = calendar.get(Calendar.YEAR);
		int month = calendar.get(Calendar.MONTH);
		int day = calendar.get(Calendar.DAY_OF_MONTH);
		/**
		 *  定制每天的00:00:00执行，若程序已超过0点启动,当天不再执行，等到明日0点再执行
		 *  这样保证了时间一直是0点，而不会变成程序启动时间
		 */
		calendar.set(year, month, day, 00, 00, 00);
		Date defaultdate = calendar.getTime();// 今天0点（默认发送时间）
		Date sendDate = new Date();
		// 8点后开机
		if (defaultdate.before(new Date())) {
			// 将发送时间设为明天0点
			calendar.add(Calendar.DATE, 1);
			defaultdate = calendar.getTime();
		}
		timer = new Timer();
		//立刻执行，然后每隔24小时执行一次
		System.out.println(defaultdate);
		timer.schedule(new BugXmlTimerTask(act),defaultdate,24*60*60*1000);

	}

	public void timerStop(){

		if(timer!=null)

			timer.cancel();

	}

	public static void main(String[] args){

		BugXmlTimer myTimer=new BugXmlTimer();

		// TODO Auto-generated method stub

		myTimer.timerStart();

	}
}
