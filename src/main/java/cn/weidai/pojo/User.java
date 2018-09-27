package cn.weidai.pojo;

import java.util.Date;

/**
 * 注册用户表
 * @author 6Q
 * 2018-8-7下午11:14:16
 */
public class User extends Base{
	
	private Integer uId;  //用户id
	private Integer rid;  //角色id
	private String rName; //角色名称
	private String uPhone; //手机号码
	private String uPassword;  //登录密码
	private String uRefPhone;  //推荐人手机号
	private String uIDCard;  //身份证号码
	private String uName;  //客户姓名
	private String uSafe;  //账户是否安全
	private String uLoginStatus; //用户登录状态
	private String uStatus; //用户状态
	private Double uBalance;  //用户余额
	private Date uRegdate ; //注册时间
	private Date  uModifydate; //用户信息修改时间
	
	public User() {
	}

	public Integer getuId() {
		return uId;
	}

	public void setuId(Integer uId) {
		this.uId = uId;
	}

	public Integer getRid() {
		return rid;
	}

	public void setRid(Integer rid) {
		this.rid = rid;
	}

	public String getrName() {
		return rName;
	}

	public void setrName(String rName) {
		this.rName = rName;
	}

	public String getuPhone() {
		return uPhone;
	}

	public void setuPhone(String uPhone) {
		this.uPhone = uPhone;
	}

	public String getuPassword() {
		return uPassword;
	}

	public void setuPassword(String uPassword) {
		this.uPassword = uPassword;
	}

	public String getuRefPhone() {
		return uRefPhone;
	}

	public void setuRefPhone(String uRefPhone) {
		this.uRefPhone = uRefPhone;
	}

	public String getuIDCard() {
		return uIDCard;
	}

	public void setuIDCard(String uIDCard) {
		this.uIDCard = uIDCard;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getuSafe() {
		return uSafe;
	}

	public void setuSafe(String uSafe) {
		this.uSafe = uSafe;
	}

	public String getuLoginStatus() {
		return uLoginStatus;
	}

	public void setuLoginStatus(String uLoginStatus) {
		this.uLoginStatus = uLoginStatus;
	}

	public String getuStatus() {
		return uStatus;
	}

	public void setuStatus(String uStatus) {
		this.uStatus = uStatus;
	}

	public Double getuBalance() {
		return uBalance;
	}

	public void setuBalance(Double uBalance) {
		this.uBalance = uBalance;
	}

	public Date getuRegdate() {
		return uRegdate;
	}

	public void setuRegdate(Date uRegdate) {
		this.uRegdate = uRegdate;
	}

	public Date getuModifydate() {
		return uModifydate;
	}

	public void setuModifydate(Date uModifydate) {
		this.uModifydate = uModifydate;
	}

	@Override
	public String toString() {
		return "User [uId=" + uId + ", rid=" + rid + ", rName=" + rName
				+ ", uPhone=" + uPhone + ", uPassword=" + uPassword
				+ ", uRefPhone=" + uRefPhone + ", uIDCard=" + uIDCard
				+ ", uName=" + uName + ", uSafe=" + uSafe + ", uLoginStatus="
				+ uLoginStatus + ", uStatus=" + uStatus + ", uBalance="
				+ uBalance + ", uRegdate=" + uRegdate + ", uModifydate="
				+ uModifydate + "]";
	}
	
	
	
}
