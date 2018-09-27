package cn.weidai.tools;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.apache.commons.lang.builder.CompareToBuilder;

/**
 * 时间差工具
 * @author 6Q
 * 2018-8-13上午10:10:50
 */
public class TimeLag {
	/**
	 * 计算相差的月份
	 * @param bBearingDate
	 * @return
	 */
	public static int MonthTimeLag(int bTimelimit,String bBearingDate){
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date date = null;
		int subMonthCount = 0;
		try {
			date = format.parse(bBearingDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		//开始时间
		Calendar start = Calendar.getInstance();
		start.setTime(date);
		//结束时间
		Calendar end = Calendar.getInstance();
		if (!start.after(end)){
			subMonthCount = 
					(end.get(Calendar.YEAR) - start.get(Calendar.YEAR) == 0) 
					? ((end.get(Calendar.DAY_OF_MONTH)-start.get(Calendar.DAY_OF_MONTH)<0)?  
							end.get(Calendar.MONTH) - start.get(Calendar.MONTH)-1: end.get(Calendar.MONTH) - start.get(Calendar.MONTH)) //同一年
							:   ((end.get(Calendar.YEAR) - start.get(Calendar.YEAR) >= 2) //年数差超过2年
									? (end.get(Calendar.YEAR) - start.get(Calendar.YEAR) - 1) 
											* 12 + start.getActualMaximum(Calendar.MONTH) - start.get(Calendar.MONTH) 
											+ end.get(Calendar.MONTH) + 1
											: start.getActualMaximum(Calendar.MONTH) - start.get(Calendar.MONTH) 
											+ end.get(Calendar.MONTH) + 1);  //年数差为1，Calendar.get(MONTH) 第一月是0，所以+1

		}
		return bTimelimit-1-subMonthCount;
	}

	/**
	 * 计算相差的天数
	 * @param bBearingDate
	 * @return
	 */
	public static int DayTimeLag(String bBearingDate){
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date date = null;
		int subDayCount = 0;
		try {
			date = format.parse(bBearingDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		//开始时间
		Calendar start = Calendar.getInstance();
		start.setTime(date);


		//结束时间
		Calendar end = Calendar.getInstance();
		Calendar c = Calendar.getInstance();
		Date endDate = new Date();
		c.set(endDate.getYear(), endDate.getMonth(), 0); //输入类型为int类型
		int days=c.get(Calendar.DAY_OF_MONTH);
		if (!start.after(end)){
			subDayCount = 
					((end.get(Calendar.DAY_OF_MONTH)-start.get(Calendar.DAY_OF_MONTH)<0)?  
							-end.get(Calendar.DAY_OF_MONTH) + start.get(Calendar.DAY_OF_MONTH)
							:  days-end.get(Calendar.DAY_OF_MONTH)+ start.get(Calendar.DAY_OF_MONTH));  //同一年
		}
		return subDayCount;
	} 

	/**
	 * 传入具体日期 ，返回具体日期增加一个月。 
	 * @param date 日期(2017-04-13) 
	 * @return 2017-05-13
	 * @throws ParseException 
	 */  
	public  static String subMonth(int bTimelimit,String before) throws ParseException {  
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");  
		Date dt = sdf.parse(before);  
		Date date = new Date();
		Calendar rightNow = Calendar.getInstance(); 
		for(int i=0;compare(sdf.format(dt),sdf.format(date))&&i<bTimelimit;i++){
			rightNow.setTime(dt);  
			rightNow.add(Calendar.MONTH, 1);  
			dt = rightNow.getTime();
		}
		String reStr = sdf.format(dt);  
		return reStr;  
	}


	/**
	 * 判断两个日期先后比较
	 * @param time1
	 * @param time2
	 * @return
	 * @throws ParseException
	 */
	public static boolean compare(String time1,String time2) throws ParseException
	{
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date a=sdf.parse(time1);
		Date b=sdf.parse(time2);
		//Date类的一个方法，如果a早于b返回true，否则返回false
		if(a.before(b))
			return true;
		else
			return false;
	}

	
	//当前日期增加一个月的方法
	public static Date addMonth() {
		
		 Date date = new Date();
		    Calendar cal = Calendar.getInstance();
		    cal.setTime(date);//设置起时间
		    		  
		    cal.add(Calendar.MONTH, 1);//增加一个月   
		    
		  /*  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		    String startTime = sdf.format(cal.getTime());*/
		   		    
			return cal.getTime();
	}

   
    
    
	
	public static void main(String[] args) {
		
		/*SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			int days = (int) ((format.parse("2018-11-17 00:00:00").getTime()-(new Date()).getTime())/(1000*3600*24));
			System.out.println(days);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		int submonth = TimeLag.MonthTimeLag(1, "2018-07-29 00:00:00");
		*/
		
		/*String i=null;		
		try {
			 i=TimeLag.subMonth(6, "2018-9-9 00:00:00");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("加一个月后的时间是："+i);		
		System.out.println("submonth="+submonth);*/
		
		
		
		
		
		
	}

	
	
	
	
	
}
