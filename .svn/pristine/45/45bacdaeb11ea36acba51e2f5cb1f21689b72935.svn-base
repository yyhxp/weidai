package cn.weidai.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 资金记录
 * @author 6Q
 * 2018-8-8上午9:39:08
 */
public class FundRecord extends Base{
	
	private Integer fId; //资金记录id
	private String fCode; //交易流水号
	private Integer uId; //用户id
	private String  oTypeName;  //操作类型名称
	private Integer oTypeId; //操作类型id
	private Double fTranAmount; //交易金额   
	private String fStatus; //交易状态
	@JSONField(format="yyyy.MM.dd") 
	@DateTimeFormat(pattern="yyyy-MM-dd")  
	private Date fDate; //交易时间
	private User user; //注册用户
	private Double balance;//剩余金额
	private Double fAfterTranAmount;//交易后的金额
	private Double bProjectTotolMoney;//项目总金额
	
	
	
	public Double getbProjectTotolMoney() {
		return bProjectTotolMoney;
	}

	public void setbProjectTotolMoney(Double bProjectTotolMoney) {
		this.bProjectTotolMoney = bProjectTotolMoney;
	}

	public Double getfAfterTranAmount() {
		return fAfterTranAmount;
	}

	public void setfAfterTranAmount(Double fAfterTranAmount) {
		this.fAfterTranAmount = fAfterTranAmount;
	}

	public FundRecord() {
	}
	
	public Double getBalance() {
		return balance;
	}

	public void setBalance(Double balance) {
		this.balance = balance;
	}

	public String getoTypeName() {
		return oTypeName;
	}

	public void setoTypeName(String oTypeName) {
		this.oTypeName = oTypeName;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getfId() {
		return fId;
	}
	public void setfId(Integer fId) {
		this.fId = fId;
	}
	public String getfCode() {
		return fCode;
	}
	public void setfCode(String fCode) {
		this.fCode = fCode;
	}
	public Integer getuId() {
		return uId;
	}
	public void setuId(Integer uId) {
		this.uId = uId;
	}
	public Integer getoTypeId() {
		return oTypeId;
	}
	public void setoTypeId(Integer oTypeId) {
		this.oTypeId = oTypeId;
	}
	public Double getfTranAmount() {
		return fTranAmount;
	}
	public void setfTranAmount(Double fTranAmount) {
		this.fTranAmount = fTranAmount;
	}
	public String getfStatus() {
		return fStatus;
	}
	public void setfStatus(String fStatus) {
		this.fStatus = fStatus;
	}
	public Date getfDate() {
		return fDate;
	}
	public void setfDate(Date fDate) {
		this.fDate = fDate;
	}
	@Override
	public String toString() {
		return "FundRecord [fId=" + fId + ", fCode=" + fCode + ", uId=" + uId
				+ ", oTypeName=" + oTypeName + ", oTypeId=" + oTypeId
				+ ", fTranAmount=" + fTranAmount + ", fStatus=" + fStatus
				+ ", fDate=" + fDate + ", user=" + user + "]";
	}


	
}
