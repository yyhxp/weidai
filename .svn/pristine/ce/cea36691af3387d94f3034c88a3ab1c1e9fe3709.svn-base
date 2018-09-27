package cn.weidai.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 收款明细
 * @author 6Q
 * 2018-8-19下午9:55:37
 */
public class Receivables extends Base{
	
	
	private Integer Rid;  	//收款明细id
	private Integer periods;  //期数
	@JSONField(format="yyyy.MM.dd") 
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date tRDate;     //待收日期
	private Double tRMoney; //待收本金
	private Double tRInterest; //待收利息
	@JSONField(format="yyyy.MM.dd") 
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date RDate;     //已收日期
	private Double RMoney; //已收本金
	private Double RInterest; //已收利息
	private String lStatus;  //状态（待收，已收）
	private Integer bId;  	//项目id
	private Integer uId;     //用户id
	
	
	
	public Receivables() {	
	}




	



	public Receivables(Integer periods, Date tRDate, Double tRMoney,
			Double tRInterest, Date RDate, Double RMoney, Double RInterest,
			String lStatus, Integer bId, Integer uId) {
		super();
		this.periods = periods;
		this.tRDate = tRDate;
		this.tRMoney = tRMoney;
		this.tRInterest = tRInterest;
		RDate = RDate;
		RMoney = RMoney;
		RInterest = RInterest;
		this.lStatus = lStatus;
		this.bId = bId;
		this.uId = uId;
	}


	public Integer getuId() {
		return uId;
	}



	public void setuId(Integer uId) {
		this.uId = uId;
	}


	public Integer getRid() {
		return Rid;
	}


	public void setRid(Integer rid) {
		Rid = rid;
	}


	public Integer getPeriods() {
		return periods;
	}


	public void setPeriods(Integer periods) {
		this.periods = periods;
	}


	public Date gettRDate() {
		return tRDate;
	}


	public void settRDate(Date tRDate) {
		this.tRDate = tRDate;
	}


	public Double gettRMoney() {
		return tRMoney;
	}


	public void settRMoney(Double tRMoney) {
		this.tRMoney = tRMoney;
	}


	public Double gettRInterest() {
		return tRInterest;
	}


	public void settRInterest(Double tRInterest) {
		this.tRInterest = tRInterest;
	}


	public Date getRDate() {
		return RDate;
	}


	public void setRDate(Date RDate) {
		RDate = RDate;
	}


	public Double getRMoney() {
		return RMoney;
	}


	public void setRMoney(Double RMoney) {
		RMoney = RMoney;
	}


	public Double getRInterest() {
		return RInterest;
	}


	public void setRInterest(Double RInterest) {
		RInterest = RInterest;
	}


	public String getlStatus() {
		return lStatus;
	}


	public void setlStatus(String lStatus) {
		this.lStatus = lStatus;
	}


	public Integer getbId() {
		return bId;
	}


	public void setbId(Integer bId) {
		this.bId = bId;
	}








	@Override
	public String toString() {
		return "Receivables [Rid=" + Rid + ", periods=" + periods + ", tRDate="
				+ tRDate + ", tRMoney=" + tRMoney + ", tRInterest="
				+ tRInterest + ", RDate=" + RDate + ", RMoney=" + RMoney
				+ ", RInterest=" + RInterest + ", lStatus=" + lStatus
				+ ", bId=" + bId + ", uId=" + uId + "]";
	}



















	
	
	
}
